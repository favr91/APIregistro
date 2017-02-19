require 'test_helper'

class GraduatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graduate = graduates(:one)
  end

  test "should get index" do
    get graduates_url
    assert_response :success
  end

  test "should get new" do
    get new_graduate_url
    assert_response :success
  end

  test "should create graduate" do
    assert_difference('Graduate.count') do
      post graduates_url, params: { graduate: { apellido: @graduate.apellido, carrera: @graduate.carrera, cedula: @graduate.cedula, direccion: @graduate.direccion, fecha_egreso: @graduate.fecha_egreso, fecha_nacimiento: @graduate.fecha_nacimiento, nombre: @graduate.nombre, sexo: @graduate.sexo, telefono: @graduate.telefono } }
    end

    assert_redirected_to graduate_url(Graduate.last)
  end

  test "should show graduate" do
    get graduate_url(@graduate)
    assert_response :success
  end

  test "should get edit" do
    get edit_graduate_url(@graduate)
    assert_response :success
  end

  test "should update graduate" do
    patch graduate_url(@graduate), params: { graduate: { apellido: @graduate.apellido, carrera: @graduate.carrera, cedula: @graduate.cedula, direccion: @graduate.direccion, fecha_egreso: @graduate.fecha_egreso, fecha_nacimiento: @graduate.fecha_nacimiento, nombre: @graduate.nombre, sexo: @graduate.sexo, telefono: @graduate.telefono } }
    assert_redirected_to graduate_url(@graduate)
  end

  test "should destroy graduate" do
    assert_difference('Graduate.count', -1) do
      delete graduate_url(@graduate)
    end

    assert_redirected_to graduates_url
  end
end
