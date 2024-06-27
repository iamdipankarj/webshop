import { Turbo } from "@hotwired/turbo-rails";

Turbo.setProgressBarDelay(0);

document.addEventListener("turbo:after-fetch-request", () => {
  Turbo.navigator.delegate.adapter.progressBar.setValue(0);
  Turbo.navigator.delegate.adapter.progressBar.show();
});

document.addEventListener("turbo:after-fetch-response", () => {
  Turbo.navigator.delegate.adapter.progressBar.setValue(1);
  Turbo.navigator.delegate.adapter.progressBar.hide();
});
