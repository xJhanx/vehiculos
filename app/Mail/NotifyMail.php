<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class NotifyMail extends Mailable
{
    use Queueable, SerializesModels;
    /**
     * Create a new message instance.
     *
     * @return void
     */


    public function __construct($getByDocument, $getByKm, $getByDias)
    {
        $this->getByDocument = $getByDocument;
        $this->getByKm = $getByKm;
        $this->getByDias =  $getByDias;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $getByDocument = $this->getByDocument;
        $getByKm = $this->getByKm;
        $getByDias = $this->getByDias;

        return $this->view('mails.notificacion', compact('getByDias','getByKm','getByDocument'));
    }
}
