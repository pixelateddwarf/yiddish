class CreateProverbs < ActiveRecord::Migration
  def change
    create_table :proverbs do |t|

      t.string :proverb
      t.string :yiddish
      t.string :transliteration
      t.string :source


      t.timestamps
    end
  end
end
