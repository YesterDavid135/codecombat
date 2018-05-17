errors = require '../commons/errors'
wrap = require 'co-express'
unsubscribe = require '../commons/unsubscribe'

webhook = wrap (req, res) ->
  if req.body.topic is 'user.unsubscribed'
    unsubscribe.unsubscribeEmail(req.body.data.item.email)
  res.status(200).send()

module.exports = {
  webhook
}
