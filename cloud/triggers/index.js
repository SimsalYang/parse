Parse.Cloud.afterSave('User', function(req) {
  console.log('after save post...')
  console.log('req.params = ' + req.params)
})
