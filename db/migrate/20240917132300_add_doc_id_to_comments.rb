class AddDocIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :doc_id, :integer
  end
end
