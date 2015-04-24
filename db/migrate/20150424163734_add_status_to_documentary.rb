class AddStatusToDocumentary < ActiveRecord::Migration
  def change
    add_column :documentaries, :status, :string
  end
end
