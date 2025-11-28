import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal", "image", "caption"]

  connect() {
    // console.log("✅ Modal Controller Connected to:", this.element);
    this.modalTarget.classList.add("hidden");
  }

  show(event) {
    const thumbnail = event.currentTarget;

    const imageUrl = thumbnail.src;

    this.imageTarget.src = imageUrl;
    this.captionTarget.innerHTML = thumbnail.alt;

    this.modalTarget.classList.remove("hidden");
  }

  hide(event) {
    if (event.target === this.modalTarget || event.currentTarget.classList.contains('close')) {
      this.modalTarget.classList.add("hidden");
    }
  }
}
