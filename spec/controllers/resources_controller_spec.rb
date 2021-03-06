require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ResourcesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Resource. As you add validations to Resource, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {title: "test", attachment: fixture_file_upload('test.txt','text/plain')}
  }

  let(:invalid_attributes) {
    {title: "test", attachment: ''}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ResourcesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  let(:admin) { Factory :admin }

  describe "GET #index" do
    it "assigns all resources as @resources" do
      sign_in admin
      resource = Factory.create :resource
      get :index
      expect(response).to be_success
      expect(response).to render_template("index")
      expect(assigns(:resources)).to eq([resource])
    end
  end

  describe "GET #new" do
    it "assigns a new resource as @resource" do
      sign_in admin
      get :new, {}
      expect(assigns(:resource)).to be_a_new(Resource)
    end
  end

  describe "POST #create" do
    before(:each){ sign_in admin }
    context "with valid params" do
      it "creates a new Resource" do
        expect {
          post :create, {:resource => valid_attributes}
        }.to change(Resource, :count).by(1)
      end

      it "assigns a newly created resource as @resource" do
        post :create, {:resource => valid_attributes}
        expect(assigns(:resource)).to be_a(Resource)
        expect(assigns(:resource)).to be_persisted
      end

      it "redirects to the created resource" do
        post :create, {:resource => valid_attributes}
        expect(response).to redirect_to(resources_path)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved resource as @resource" do
        post :create, {:resource => invalid_attributes}
        expect(assigns(:resource)).to be_a_new(Resource)
      end

      it "re-renders the 'new' template" do
        post :create, {:resource => invalid_attributes}
        expect(response).to render_template("new")
      end
    end
  end

  describe "DELETE #destroy" do
    before(:each){ sign_in admin }
    it "destroys the requested resource" do
      resource = Factory.create :resource
      expect {
        delete :destroy, {:id => resource.to_param}
      }.to change(Resource, :count).by(-1)
    end

    it "redirects to the resources list" do
      resource = Factory.create :resource
      delete :destroy, {:id => resource.to_param}
      expect(response).to redirect_to(resources_url)
    end
  end

end
