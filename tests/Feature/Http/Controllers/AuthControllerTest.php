<?php

namespace Tests\Feature\Http\Controllers;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class AuthControllerTest extends TestCase
{
    use DatabaseTransactions;

    /**
     * A basic test example.
     * @test
     * @return void
     */
    public function login_action()
    {
        $response = $this->post(route('login'), [
            'email' => 'e.arbab.942@gmail.com',
            'password' => '123456'
        ]);
        $response->assertStatus(200);
    }

    /**
     * A basic test example.
     test
     return void
     */

    /*public function register_action()
    {
        $new_user = User::create([
            'name' => "Mekaeil",
            'email' => "m@gmail.com",
            'password' => "123456",
        ]);

        $this->assertEquals("Mekaeil Andisheh", $new_user->name);
    }*/
}
