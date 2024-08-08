<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddImagesToProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('projects', function (Blueprint $table) {
            $table->string('image_2')->nullable()->after('image');
            $table->string('image_3')->nullable()->after('image_2');
            $table->string('image_4')->nullable()->after('image_3');
            $table->string('image_5')->nullable()->after('image_4');
            $table->string('image_6')->nullable()->after('image_5');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('projects', function (Blueprint $table) {
            $table->dropColumn(['image_2', 'image_3', 'image_4', 'image_5', 'image_6']);
        });
    }
}
