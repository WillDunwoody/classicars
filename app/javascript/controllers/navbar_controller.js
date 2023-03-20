import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["navItems"]
  connect() {
  }

  open() {
    if (this.navItemsTarget.style.display === "") {
      this.navItemsTarget.style.display = "flex"
    } else {
      this.navItemsTarget.style.display = ""
    }
  }
}
