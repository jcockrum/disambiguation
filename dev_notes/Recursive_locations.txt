class AddAncestryToLocations < ActiveRecord::Migration
  def self.up
    add_column :locations, :ancestry, :string
    add_index :locations, :ancestry
  end

  def self.down
    remove_index :locations, :ancestry
    remove_column :locations, :ancestry
  end
end

locations_controller.rb

def new
  @location = Location.new(:parent_id => params[:parent_id])
end

locations_helper.rb

    def nested_locations(locations)
      locations.map do |location, sub_locations|
        render(location) + content_tag(:div, nested_locations(sub_locations), :class => "nested_locations")
      end.join.html_safe
    end

locations/index.html.erb

    <%= nested_locations @locations.arrange(:order => :created_at) %>

locations/show.html.erb

    <%= nested_locations @location.subtree.arrange(:order => :created_at) %>

locations/_form.html.erb

    <%= f.hidden_field :parent_id %>

locations/_location.html.erb

    <%= link_to location.content, location %>
    <%= link_to "New Area", new_location_path(:parent_id => location) %> |

application.css

    .nested_locations {margin-left: 30px;}
    .nested_locations .nested_locations .nested_locations .nested_locations {margin-left: 0;}
