import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    close(e) {
        if (e) {
            e.preventDefault()
        }

        // Animate out if desired, or just remove
        this.element.remove()
    }

    stopPropagation(e) {
        e.stopPropagation()
    }
}
