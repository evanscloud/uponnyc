class CreateJoinTableCauseEvents < ActiveRecord::Migration[5.0]
  def change
    create_join_table :causes, :events do |t|
      # t.index [:cause_id, :event_id]
      # t.index [:event_id, :cause_id]
    end
  end
end
