require "test_helper"

describe PodcastsController do

  let(:podcast) { podcasts :one }

  it "gets index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:podcasts)
  end

  it "gets new" do
    get :new
    assert_response :success
  end

  it "creates podcast" do
    assert_difference('Podcast.count') do
      post :create, podcast: { title: @podcast.title, url: @podcast.url }
    end

    assert_redirected_to podcast_path(assigns(:podcast))
  end

  it "shows podcast" do
    get :show, id: podcast
    assert_response :success
  end

  it "gets edit" do
    get :edit, id: podcast
    assert_response :success
  end

  it "updates podcast" do
    put :update, id: podcast, podcast: { title: @podcast.title, url: @podcast.url }
    assert_redirected_to podcast_path(assigns(:podcast))
  end

  it "destroys podcast" do
    assert_difference('Podcast.count', -1) do
      delete :destroy, id: podcast
    end

    assert_redirected_to podcasts_path
  end

end
