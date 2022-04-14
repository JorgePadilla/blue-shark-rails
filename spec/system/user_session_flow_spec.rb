require 'rails_helper'

describe "User session flow", type: :system do
    scenario "redirected from dashboard when logged out" do
        visit "/dashboard"
        #expect(page).to have_text("You must log in")

    end
end