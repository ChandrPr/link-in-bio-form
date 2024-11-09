class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all
    render({ :template => "item_templates/list" })
  end

  def backdoor
    @list_of_items = Item.order({:created_at => :desc})
    render({ :template => "item_templates/backdoor"})
  end

  def insert_item
    item = Item.new
    item.link_description = params['query_link_description']
    item.link_url = params["query_link_url"]
    item.thumbnail_url = params['query_thumbnail_url']
    item.save
    redirect_to("/")
  end

  def delete_item
    Item.where({:id => params[:id]})[0].destroy
    redirect_to("/backdoor")
  end
end
