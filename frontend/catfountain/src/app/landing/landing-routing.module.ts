import {RouterModule, Routes} from "@angular/router";
import {LandingPageComponent} from "./landing-page/landing-page.component";
import {LandingComponent} from "./landing.component";
import {NgModule} from "@angular/core";

const routes: Routes = [
  {
    path: '', // Base path for authentication
    component: LandingComponent, // This will be loaded into the nested router outlet
    children: [ // Child routes for authentication
      {
        path: ' ', // Path for login component (e.g., /auth/login)
        component: LandingPageComponent
      }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})

export class LandingRoutingModule { }
