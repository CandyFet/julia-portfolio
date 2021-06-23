# frozen_string_literal: true

require "rails_helper"

describe PagesController do
  describe "GET #home" do
    render_views

    subject { get :home }

    specify { is_expected.to be_successful }
  end

  describe "GET #about" do
    render_views

    subject { get :about }

    specify { is_expected.to be_successful }
  end
end
