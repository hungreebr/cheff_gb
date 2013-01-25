require 'spec_helper'

describe "recipes/edit" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :nome => "MyString",
      :email => "MyString",
      :receita => "MyText"
    ))
  end

  it "renders the edit recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path(@recipe), :method => "post" do
      assert_select "input#recipe_nome", :name => "recipe[nome]"
      assert_select "input#recipe_email", :name => "recipe[email]"
      assert_select "textarea#recipe_receita", :name => "recipe[receita]"
    end
  end
end
