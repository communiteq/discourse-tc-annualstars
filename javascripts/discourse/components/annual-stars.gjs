import Component from "@glimmer/component";
import icon from "discourse-common/helpers/d-icon";
import { range } from "../helpers/range";

export default class AnnualStars extends Component {
  get numStars() {
    console.log(settings.theme_uploads);
    return moment().diff(this.args.user.created_at, 'year');
  }

  get mustShow() {
    return true;
  }

  get starURL() {
    return settings.theme_uploads.annualstar;
  }

  <template>
    {{#if this.mustShow}}
      <div id="annual-stars">
        {{#each (range 1 this.numStars) as |i|}}
          <img src={{ this.starURL }} alt="*" >
        {{/each}}
      </div>
    {{/if}}
  </template>
}