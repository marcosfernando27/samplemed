<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'title'         => 'required|string|max:128',
            'body'          => 'required|string|max:2000',
            'category_id'   => 'required|array'
        ];
    }

    public function messages(): array
{
    return [
        'title.required'        => 'Campo título é obrigatório',
        'body.required'         => 'Campo conteúdo é obrigatório',
        'category_id'           => 'Selecione uma categoria'
    ];
}
}
