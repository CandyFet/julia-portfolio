# frozen_string_literal: true

require "system_helper"

describe "/" do
  specify do
    visit root_path

    expect(page).to have_text "Главная"
  end
end

describe "/about" do
  specify do
    visit pages_about_path

    expect(page).to have_text "Обо мне"
  end
end
