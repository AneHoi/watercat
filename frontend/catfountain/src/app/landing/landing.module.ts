import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {IonicModule} from "@ionic/angular";
import {LandingComponent} from "./landing.component";
import {LandingPageComponent} from "./landing-page/landing-page.component";
import {LandingRoutingModule} from "./landing-routing.module";



@NgModule({
  declarations: [LandingComponent, LandingPageComponent],
  imports: [
    CommonModule,
    IonicModule,
    LandingRoutingModule
  ]
})
export class LandingModule { }
