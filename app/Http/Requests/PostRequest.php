<?php

namespace App\Http\Requests;

//use App\Http\Requests\Request;
//
//use Illuminate\Support\Facades\Request;

use Illuminate\Http\Request;

class PostRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title' => 'required',
            'content' => 'required',
            'category_id' => 'regex:/[0-9]{1,}/',
            'user_id' => 'integer',
            'status' => 'in:draft,online,offline',
//            'picture' => 'required|mimes:jpg'
        ];
    }
}
