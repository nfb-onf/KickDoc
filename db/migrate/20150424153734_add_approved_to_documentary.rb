class AddApprovedToDocumentary < ActiveRecord::Migration
  def change
    add_column :documentaries, :approved, :boolean
  end
end
