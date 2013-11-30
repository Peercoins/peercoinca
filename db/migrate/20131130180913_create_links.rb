class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.text :description
      t.string :url
      t.boolean :active, default: false
      t.belongs_to :category
      t.timestamps
    end
    Link.create(name: 'D7 Pool', description: '1.5% / Stratum / PPLNS', url: 'https://ppcoin.d7.lt/', active: true, category: Category.find(1))
    Link.create(name: 'FuzzyBear\'s PPC Pool', description: '2% / Stratum / PPS,PPLNS,ESMPPS', url: 'http://fuzzypool.org/pool/', active: true, category: Category.find(1))
    Link.create(name: 'Fixx PPCoin Pool', description: '0% / Stratum / PPLNS', url: 'http://ppc.fixx.ru/', active: true, category: Category.find(1))
    Link.create(name: 'PeerCoinTalk', description: 'Official Forums', url: 'http://www.peercointalk.org/', active: true, category: Category.find(2))
    Link.create(name: 'Peercoin Sub-Reddit', description: 'Peercoin on Reddit', url: 'http://www.reddit.com/r/peercoin', active: true, category: Category.find(2))
    Link.create(name: 'Official Website', description: 'Official Peercoin website', url: 'http://peercoin.net/', active: true, category: Category.find(6))
    Link.create(name: 'Official Wiki', description: 'The Peercoin wiki', url: 'https://github.com/ppcoin/ppcoin/wiki', active: true, category: Category.find(6))
  end

end
