class Proverb < ActiveRecord::Base
 validates :proverb, :presence => true, :length  => { :maximum => 140, :minimum => 3 }
 validates :yiddish, :presence => true, :length  => { :maximum => 140, :minimum => 3 }
 validates :transliteration, :presence => true, :length  => { :maximum => 140, :minimum => 3 }
 validates :source, :presence => true, :length  => { :maximum => 140, :minimum => 3 }
end
