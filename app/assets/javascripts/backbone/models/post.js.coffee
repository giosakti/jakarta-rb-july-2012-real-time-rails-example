class Chat.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    body: null

class Chat.Collections.PostsCollection extends Backbone.Collection
  model: Chat.Models.Post
  url: '/posts'
