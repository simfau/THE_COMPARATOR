import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = ["hideable", "show"]

  call(event) {
    event.preventDefault()

    // 1. Loop through ALL hideable items (Sidebar + Close Button) and toggle them
    this.hideableTargets.forEach((element) => {
      element.classList.toggle("d-none")
    })

    // 2. Toggle the Show Button (Open Arrow)
    this.showTarget.classList.toggle("d-none")
  }
}
