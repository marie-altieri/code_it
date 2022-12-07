import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="disable-button"
export default class extends Controller {
  disable(e) {
    e.currentTarget.innerText = "Added to favorites"
    e.currentTarget.classList.add("disable-button")
  }
}
