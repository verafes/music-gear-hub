// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require rails-ujs

import "@popperjs/core";
import "bootstrap";
import { Turbo } from "turbo-rails";

Turbo.start();