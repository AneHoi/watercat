import {Component, OnInit} from "@angular/core";
import {ToastController} from "@ionic/angular";

@Component({
  selector: 'app-landing',
  templateUrl: './landing.component.html',
  styleUrls: ['/../app.component.scss'],
})
export class LandingComponent  implements OnInit {

  constructor(private toastController: ToastController) { }

  ngOnInit() {

  }

  async presentToast(errorMessage: string) {
    const toast = await this.toastController.create({
      message: errorMessage,
      duration: 4000,
      position: 'bottom',
      color: 'danger'
    });
    toast.present();
  }

}
