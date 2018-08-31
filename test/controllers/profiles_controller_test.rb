require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { about: @profile.about, astrology: @profile.astrology, birth_date: @profile.birth_date, city: @profile.city, country: @profile.country, cut: @profile.cut, eyes: @profile.eyes, first_name: @profile.first_name, gender: @profile.gender, hair: @profile.hair, last_name: @profile.last_name, marital_status: @profile.marital_status, nationality: @profile.nationality, occupation: @profile.occupation, purpose: @profile.purpose, region: @profile.region, sexual_orientation: @profile.sexual_orientation, weight: @profile.weight } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { about: @profile.about, astrology: @profile.astrology, birth_date: @profile.birth_date, city: @profile.city, country: @profile.country, cut: @profile.cut, eyes: @profile.eyes, first_name: @profile.first_name, gender: @profile.gender, hair: @profile.hair, last_name: @profile.last_name, marital_status: @profile.marital_status, nationality: @profile.nationality, occupation: @profile.occupation, purpose: @profile.purpose, region: @profile.region, sexual_orientation: @profile.sexual_orientation, weight: @profile.weight } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
