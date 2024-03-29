require 'spec_helper'

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

describe StudentorgsController do

  # This should return the minimal set of attributes required to create a valid
  # Studentorg. As you add validations to Studentorg, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StudentorgsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all studentorgs as @studentorgs" do
      studentorg = Studentorg.create! valid_attributes
      get :index, {}, valid_session
      assigns(:studentorgs).should eq([studentorg])
    end
  end

  describe "GET show" do
    it "assigns the requested studentorg as @studentorg" do
      studentorg = Studentorg.create! valid_attributes
      get :show, {:id => studentorg.to_param}, valid_session
      assigns(:studentorg).should eq(studentorg)
    end
  end

  describe "GET new" do
    it "assigns a new studentorg as @studentorg" do
      get :new, {}, valid_session
      assigns(:studentorg).should be_a_new(Studentorg)
    end
  end

  describe "GET edit" do
    it "assigns the requested studentorg as @studentorg" do
      studentorg = Studentorg.create! valid_attributes
      get :edit, {:id => studentorg.to_param}, valid_session
      assigns(:studentorg).should eq(studentorg)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Studentorg" do
        expect {
          post :create, {:studentorg => valid_attributes}, valid_session
        }.to change(Studentorg, :count).by(1)
      end

      it "assigns a newly created studentorg as @studentorg" do
        post :create, {:studentorg => valid_attributes}, valid_session
        assigns(:studentorg).should be_a(Studentorg)
        assigns(:studentorg).should be_persisted
      end

      it "redirects to the created studentorg" do
        post :create, {:studentorg => valid_attributes}, valid_session
        response.should redirect_to(Studentorg.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved studentorg as @studentorg" do
        # Trigger the behavior that occurs when invalid params are submitted
        Studentorg.any_instance.stub(:save).and_return(false)
        post :create, {:studentorg => { "name" => "invalid value" }}, valid_session
        assigns(:studentorg).should be_a_new(Studentorg)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Studentorg.any_instance.stub(:save).and_return(false)
        post :create, {:studentorg => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested studentorg" do
        studentorg = Studentorg.create! valid_attributes
        # Assuming there are no other studentorgs in the database, this
        # specifies that the Studentorg created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Studentorg.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => studentorg.to_param, :studentorg => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested studentorg as @studentorg" do
        studentorg = Studentorg.create! valid_attributes
        put :update, {:id => studentorg.to_param, :studentorg => valid_attributes}, valid_session
        assigns(:studentorg).should eq(studentorg)
      end

      it "redirects to the studentorg" do
        studentorg = Studentorg.create! valid_attributes
        put :update, {:id => studentorg.to_param, :studentorg => valid_attributes}, valid_session
        response.should redirect_to(studentorg)
      end
    end

    describe "with invalid params" do
      it "assigns the studentorg as @studentorg" do
        studentorg = Studentorg.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Studentorg.any_instance.stub(:save).and_return(false)
        put :update, {:id => studentorg.to_param, :studentorg => { "name" => "invalid value" }}, valid_session
        assigns(:studentorg).should eq(studentorg)
      end

      it "re-renders the 'edit' template" do
        studentorg = Studentorg.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Studentorg.any_instance.stub(:save).and_return(false)
        put :update, {:id => studentorg.to_param, :studentorg => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested studentorg" do
      studentorg = Studentorg.create! valid_attributes
      expect {
        delete :destroy, {:id => studentorg.to_param}, valid_session
      }.to change(Studentorg, :count).by(-1)
    end

    it "redirects to the studentorgs list" do
      studentorg = Studentorg.create! valid_attributes
      delete :destroy, {:id => studentorg.to_param}, valid_session
      response.should redirect_to(studentorgs_url)
    end
  end

end
