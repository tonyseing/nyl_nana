========
1. Log onto your Facebook Developer account. Go to https://developers.facebook.com/tools/explorer
2. Click the "Get Access Token" button
3. Click on the "Friends' Data Permissions" tab
4. Check "friends_interests"
5. Click the "Get Access Token" button
6. Copy or write down the access token number somewhere
7. Replace access_token = "" with access_token = "THE-ACCESS-TOKEN-YOU-JUST-WROTE-DOWN"
8. Run "bundle install" in the script directory
9. Run "ruby people_fetch.rb"
10. Your results will be written to people_with_interests.csv. Note that this file is overwritten each time the script is run, so any results should be copied somewhere.
