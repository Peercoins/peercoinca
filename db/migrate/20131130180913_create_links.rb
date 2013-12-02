class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.text :description
      t.string :url
      t.boolean :active, default: false
      t.boolean :local, default: false
      t.boolean :important, default: false
      t.belongs_to :category
      t.timestamps
    end
    Link.create(name: 'D7 Pool', description: '1.5% / Stratum / PPLNS', url: 'https://ppcoin.d7.lt/', active: true, category: Category.find(1))
    Link.create(name: 'FuzzyBear\'s PPC Pool', description: '2% / Stratum / PPS,PPLNS,ESMPPS', url: 'http://fuzzypool.org/pool/', active: true, category: Category.find(1))
    Link.create(name: 'Fixx PPCoin Pool', description: '0% / Stratum / PPLNS', url: 'http://ppc.fixx.ru/', active: true, category: Category.find(1))
    Link.create(name: 'PeerCoinTalk', description: 'Official Forums', url: 'http://www.peercointalk.org/', active: true, category: Category.find(2), important: true)
    Link.create(name: 'Peercoin Sub-Reddit', description: 'Peercoin on Reddit', url: 'http://www.reddit.com/r/peercoin', active: true, category: Category.find(2))
    Link.create(name: 'BitCoinTalk', description: 'Altcoin sub-forum', url: 'https://bitcointalk.org/index.php?board=67.0', active: true, local: false, category: Category.find(2))
    Link.create(name: 'CryptoCoinTalk', description: 'Peercoin sub-forum', url: 'https://cryptocointalk.com/forum/63-ppcoin-ppc/', active: true, local: false, category: Category.find(2))
    Link.create(name: 'Official Website', description: 'Official Peercoin website', url: 'http://peercoin.net/', active: true, important: true, category: Category.find(7))
    Link.create(name: 'Official Wiki', description: 'The Peercoin wiki', url: 'https://github.com/ppcoin/ppcoin/wiki', active: true, important: true, category: Category.find(7))
    Link.create(name: 'BTC-e', description: '', url: 'https://btc-e.com/', active: true, local: false, category: Category.find(3))
    Link.create(name: 'Vircurex', description: '', url: 'https://vircurex.com/welcome/index?base=usd&alt=ppc', active: true, local: false, category: Category.find(3))
    Link.create(name: 'Cryptsy', description: '', url: 'https://www.cryptsy.com/markets/view/28', active: true, local: false, category: Category.find(3))
    Link.create(name: 'Bter', description: '', url: 'https://bter.com/trade/ppc_btc', active: true, local: false, category: Category.find(3))
    Link.create(name: 'Vault of Satoshi', description: '', url: 'https://www.vaultofsatoshi.com/', active: true, local: true, category: Category.find(3))
    Link.create(name: 'Bees Brothers', description: 'Honey and Honey Products', url: 'http://www.beesbros.com/', active: true, local: false, category: Category.find(4))
    Link.create(name: 'Jay''s Jerky and Goodies', description: 'Natural Buffalo Jerky, Beef Jerky, Seasonings and Herbs and Homemade Satin Fudge', url: 'http://jaysjerkyandgoodies.com/', active: true, local: false, category: Category.find(4))
    Link.create(name: 'All Things Luxury', description: 'Discount fashion jewelry and luxury goods', url: 'http://www.allthingsluxury.biz/Pay-With-AltCoins.html', active: true, local: true, category: Category.find(4))
  end

end
