require 'spec_helper'

describe "recipes/new" do
  before(:each) do
    assign(:recipe, stub_model(Recipe,
      :nome => "MyString",
      :email => "MyString",
      :receita => "MyText"
    ).as_new_record)
  end

  it "renders new recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path, :method => "post" do
      assert_select "input#recipe_nome", :name => "recipe[nome]"
      assert_select "input#recipe_email", :name => "recipe[email]"
      assert_select "textarea#recipe_receita", :name => "recipe[receita]"
    end
  end
end
