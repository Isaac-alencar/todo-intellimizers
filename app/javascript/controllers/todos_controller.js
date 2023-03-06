import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {}

  toggle(e) {
    const id = e.target.dataset.id;
    const csrfToken = document.querySelector("[name='csrf-token']").content;

    fetch(`/todos/${id}`, {
      method: "PATCH", // *GET, POST, PUT, DELETE, etc.
      mode: "cors", // no-cors, *cors, same-origin
      cache: "no-cache", // *default, no-cache, reload, force-cache, only-if-cached
      credentials: "same-origin", // include, *same-origin, omit
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": csrfToken,
      },
      // body data type must match "Content-Type" header
      body: JSON.stringify({ completed: e.target.checked }),
    })
      .then((response) => response.json())
      .then((data) => {
        alert(data.message);
      });
  }
}
