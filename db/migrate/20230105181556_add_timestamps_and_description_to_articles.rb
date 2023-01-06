class AddTimestampsAndDescriptionToArticles < ActiveRecord::Migration[7.0]
  def change
    # --如何增加新欄位--
    # methodname :tablename, attributesname, datatype
    add_column :articles, :descriptions, :text

    # rails自動追蹤的創建與更新timestamps命名「必須」為created_at和updated_at
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
    
  end
end
