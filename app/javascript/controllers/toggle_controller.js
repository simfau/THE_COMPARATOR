import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static targets = ["hideable", "show"]
  call(event) {
    event.preventDefault()
    this.hideableTargets.forEach((element) => {
      element.classList.toggle("d-none")
    })
    this.showTarget.classList.toggle("d-none")
  }
}
