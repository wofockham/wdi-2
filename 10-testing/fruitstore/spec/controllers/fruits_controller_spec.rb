require 'spec_helper'

describe FruitsController do

  describe "GET :index from /fruits" do
    before do
      3.times { |i| Fruit.create(:name => "Fruit Number #{i}") }
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
        expect(assigns(:fruits).first.name).to eq("Fruit Number 2")
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
        expect(fruits.first["name"]).to eq("Fruit Number 2")
      end

    end
  end

  describe "POST :create to /fruits" do
    describe "a fruit with a name" do
      before do
        post :create, { :name => "Strawberry" }
      end

      it "should redirect to the show action" do
      end

      it "should render the show template" do
      end

      it "should increase the number of Fruits" do
      end
    end

    describe "a fruit without a name" do
      before do
        post :create, {}
      end

      it 'should give us a 200 success' do
      end

      it "should render the new template" do
      end

      it "should not increase the number of Fruits" do
      end
    end
  end
end
