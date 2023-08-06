<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use App\Models\Letter;
use App\Models\Sender;

class PrintController extends Controller
{
    public function index()
    {
        $item = Letter::with(['department'])->where('letter_type', 'Surat Masuk')->latest()->get();

        // GET NAME OF SENDER
        $senders = [];
        foreach ($item as $letter) {
            $senderDiLetter = $letter->sender;
            if (is_numeric($senderDiLetter) && preg_match('/^\d+$/', $senderDiLetter)) {
                $nameDiSender = Sender::where('id', $senderDiLetter)->first();
                $senders[$senderDiLetter] = $nameDiSender;
            } else {
                $senders[$senderDiLetter] = $senderDiLetter;
            }
        }

        return view('pages.admin.letter.print-incoming', [
            'item' => $item,
            'name' => $senders,
        ]);
    }

    public function outgoing()
    {
        $item = Letter::with(['department'])->where('letter_type', 'Surat Keluar')->latest()->get();

        // GET NAME OF SENDER
        $senders = [];
        foreach ($item as $letter) {
            $senderDiLetter = $letter->sender;
            if (is_numeric($senderDiLetter) && preg_match('/^\d+$/', $senderDiLetter)) {
                $nameDiSender = Sender::where('id', $senderDiLetter)->first();
                $senders[$senderDiLetter] = $nameDiSender;
            } else {
                $senders[$senderDiLetter] = $senderDiLetter;
            }
        }

        return view('pages.admin.letter.print-outgoing', [
            'item' => $item,
            'name' => $senders,
        ]);
    }
}
