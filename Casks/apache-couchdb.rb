cask 'apache-couchdb' do
  version '2.0.0'
  sha256 'a95b6edad13e0821013545a2ce9a2891bb0f846734598735c9a3737d4ef2e8d7'

  # bintray.com/apache/couchdb was verified as official when first introduced to the cask
  url "https://dl.bintray.com/apache/couchdb/mac/#{version}/Apache-CouchDB-#{version}.zip"
  appcast 'https://github.com/apache/couchdb/releases.atom',
          checkpoint: '40f168c2373b2feda56c3a1aeefcb9b83118446dd10813a97e19755fec7f37db'
  name 'Apache CouchDB'
  homepage 'https://couchdb.apache.org/'

  app 'Apache CouchDB.app'

  zap delete: [
                '~/Library/Application Support/CouchDB',
                '~/Library/Caches/org.apache.couchdb',
                '~/Library/Logs/couchdb.log',
                '~/Library/Logs/couchdb.log.old',
                '~/Library/Preferences/org.apache.couchdb.plist',
              ]
end
