require 'spec_helper'

describe FruitsController do

  describe "GET :index from /fruits" do
    before do
      FactoryGirl.create_list(:fruit, 3)
    end

    describe "as HTML" do
      before do
        get :index
      end

      it "should respond with a status 200" do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it "should render the index template" do
        expect(response).to render_template("index")
      end

      it "should show the fruits in @fruits in reverse order" do
        expect(assigns(:fruits)).to be # Thanks, Shakespeare
        expect(assigns(:fruits).length).to eq(3)
        expect(assigns(:fruits).first.class).to eq(Fruit)
        expect(assigns(:fruits)).to match_array(Fruit.all.reverse)
      end
    end

    describe "as JSON" do
      before do
        get :index, :format => :json
      end

      it "should respond with a status 200" do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it "should give content type JSON" do
        expect(response.content_type).to eq('application/json')
      end

      it "should parse as JSON" do
        lambda { JSON.parse(response.body) }.should_not raise_error
      end

      it "should include the name of the fruit in the JSON" do
        fruits = JSON.parse(response.body)
        expect(fruits.length).to eq(3)
        expect(fruits.first["name"]).to eq(Fruit.last.name)
      end

    end
  end

  describe "POST :create to /fruits" do
    describe "a fruit with a name" do
      before do
        post :create, :fruit => { :name => "Strawberry" }
      end

      it "should redirect to the show action" do
        expect(response.status).to eq(302)
        expect(response).to redirect_to(fruit_path(assigns(:fruit)))
      end

      it "should increase the number of Fruits" do
        expect(Fruit.count).to eq(1)
      end
    end

    describe "a fruit without a name" do
      before do
        post :create, {}
      end

      it 'should give us a 200 success' do
        expect(response.status).to eq(200)
        expect(response).to be_success
      end

      it "should render the new template" do
        expect(response).to render_template("new")
      end

      it "should not increase the number of Fruits" do
        expect(Fruit.count).to eq(0)
      end
    end
  end
end
