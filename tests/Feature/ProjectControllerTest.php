<?php

namespace Tests\Feature;

use App\Models\Project;
use Illuminate\Foundation\Testing\DatabaseTransactions;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use ReflectionClass;
use Tests\TestCase;

class ProjectControllerTest extends TestCase
{
    use DatabaseTransactions;
/**
*@test
* @return void*/
    public function counttest()
    {
       $project=new Project();
       $count=$this->invokeMethod($project, 'lcount', []);
       $this->assertEquals(2,$count);

    }
    public function morkertest()
    {
        $someObj = new Project();
        $someVal = 2;
        $mockeryMock = \Mockery::mock();
        $mockeryMock->shouldReceive('lcount')->with()->times(1)->andReturn($someVal);
        $this->assertEquals($someVal, $someObj->lcount());
    }

    public function invokeMethod(&$object, $methodName, array $parameters = array())
    {
        $reflection = new ReflectionClass(get_class($object));
        $method = $reflection->getMethod($methodName);
        $method->setAccessible(true);
        return $method->invokeArgs($object, $parameters);
    }
    /**
     *@test
     * @return void*/

    public function createtest()
    {
        $proj=Project::create(['name'=>'Kerman']);
        $this->assertEquals('Kerman',$proj->name);
    }
}
