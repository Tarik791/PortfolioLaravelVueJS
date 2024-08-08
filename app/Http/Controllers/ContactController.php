<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactRequest;
use App\Mail\ContactMail;
use Illuminate\Support\Facades\Mail as FacadesMail;

class ContactController extends Controller
{
    //
    public function __invoke(ContactRequest $request)
    {
        FacadesMail::to('terzotarik@gmail.com')->send(new ContactMail($request->name, $request->email, $request->body));

        return redirect()->back();
    }
}
