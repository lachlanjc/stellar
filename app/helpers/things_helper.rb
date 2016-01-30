module ThingsHelper
  def render_comments(thing = @thing)
    render thing.comments.order(created_at: :asc)
  end
end
