# VolunterMatch API provided in GitHub repo file: https://github.com/volunteermatch/vm-contrib/blob/master/api-examples/ruby/apiv2.rb

require 'base64'
require 'digest/sha2'
require 'net/http'
require 'uri'
require 'json'
require 'ostruct'

module Volunteermatch

  class << self

    def hello_world(name)
      call(:helloWorld, {:name => name}.to_json)
    end

    def call(action, json_query)
      nonce = Digest::SHA2.hexdigest(rand.to_s)[0, 20]
      creation_time = Time.now.utc.strftime("%Y-%m-%dT%H:%M:%S%z")
      password_digest = Base64.encode64(Digest::SHA2.digest(nonce + creation_time + ENV['VM_ACCOUNT_KEY'])).chomp
      url = URI.parse("http://www.volunteermatch.org/api/call?action=#{action.to_s}&query=" + URI.encode(json_query))

      req = Net::HTTP::Get.new(url.request_uri)
      req.add_field('Content-Type', 'application/json')
      req.add_field('Authorization', 'WSSE profile="UsernameToken"')
      req.add_field('X-WSSE', 'UsernameToken Username="' + ENV['VM_ACCOUNT_NAME'] + '", PasswordDigest="' + password_digest + '", ' +
          'Nonce="' + nonce + '", Created="' + creation_time + '"')

      res = Net::HTTP.new(url.host, url.port).start { |http| http.request(req) }
      raise "HTTP error code #{res.code}" unless res.code == "200"
      OpenStruct.new(JSON.parse res.body)
    end

    def call_events(cause)
      vm_events = call(:searchOpportunities, {:location => "new york", :fieldsToDisplay => ["title", "parentOrg", "availability", "plaintextDescription", "location", "skillsNeeded", "minimumAge", "vmUrl"], :numberOfResults => 25, :sortOrder => "asc", :categoryIds => [cause.to_i]}.to_json)

      vm_events.opportunities.each do |event|
        if !Event.exists?(event['id'])
          Event.create(id: event['id'], title: event['title'], organization: event['parentOrg']['name'], start: event['availability']['startDate'], end: event['availability']['endDate'], description: event['plaintextDescription'], address: event['location']['postalCode'], skills: event['skillsNeeded'], age: event['minimumAge'], url: event['vmUrl'], cause_id: cause.to_i)
        end
      end
    end

  end

end
