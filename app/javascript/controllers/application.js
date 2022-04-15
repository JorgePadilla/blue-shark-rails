import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

$(document).on("turbolinks:load", () => {
    console.log("turbolinks!");
  });
  $(document).on("turbo:load", () => {
    console.log("turbo!");
  });