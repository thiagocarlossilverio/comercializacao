$(function() {    //$(document).on("click", ".btn", function() {    $('.tipo').click(function() {        var tipo = $(this).attr('tipo');        if (tipo == 1) {            $('#label-nome1').html('Nome');            $('#label-nome2').html('Sobrenome');            $('#label-doc1').html('CPF');            $('#label-doc2').html('RG');            $('#nome1').attr('placeholder', 'Insira seu Nome');            $('#nome2').attr('placeholder', 'Insira seu Sobrenome');            $('#doc1').attr('placeholder', 'Insira seu CPF');            $('#doc2').attr('placeholder', 'Insira seu RG');        } else {            $('#label-nome1').html('Razão Social');            $('#label-nome2').html('Nome Fantasia');            $('#label-doc1').html('CNPJ');            $('#label-doc2').html('I.E');            $('#nome1').attr('placeholder', 'Insira a Razão Social');            $('#nome2').attr('placeholder', 'Insira o Nome Fantasia');            $('#doc1').attr('placeholder', 'Insira o CNPJ');            $('#doc2').attr('placeholder', 'Insira a Inscrição Estadual');        }    });    $('#confirma_senha').blur(function() {        if ($(this).val() != $('#senha').val()) {            $('#senha').val("");            $('#confirma_senha').val("");            alert('As senhas não se coincide!');        }    });    $('#telefone').mask('(99) 9999-9999');    $('#cep').mask("99999-999");    var options = {        onKeyPress: function(cpf, ev, el, op) {            var masks = ['000.000.000-000', '00.000.000/0000-00'],                    mask = (cpf.length > 14) ? masks[1] : masks[0];            el.mask(mask, op);        }    };    $('.cpfOuCnpj').mask('000.000.000-000', options);    $('#doc1').blur(function() {        var doc = $(this).val();        if (doc !== '') {            $.ajax({                url: '/cadastro/ajax-doc',                type: 'GET',                data: 'doc=' + doc,                dataType: 'json',                success: function(data) {                    if (data == '1') {                        alert('Documento Já cadastrado');                        $('#doc1').val('');                    }                }            });        }    });    $('#email').blur(function() {        var email = $(this).val();        if (email !== '') {            $.ajax({                url: '/cadastro/ajax-email',                type: 'GET',                data: 'email=' + email,                dataType: 'json',                success: function(data) {                    if (data == '1') {                        alert('E-mail Já cadastrado');                        $('#email').val('');                    }                }            });        }    });    $('#cep').blur(function() {        /* Configura a requisição AJAX */        $.ajax({            url: '/cadastro/completa-endereco', /* URL que será chamada */            type: 'POST', /* Tipo da requisição */            data: 'cep=' + $('#cep').val(), /* dado que será enviado via POST */            dataType: 'json', /* Tipo de transmissão */            success: function(data) {                //if (data.sucesso == 1) {                $('#endereco').val(data.rua);                $('#bairro').val(data.bairro);                $('#cidade').val(data.cidade);                $('#estado').val(data.estado);                $('#numero').focus();                // }            }        });        return false;    });    $('#doc1').blur(function() {        if (!formata_cpf_cnpj($(this).val())) {            alert('CPF ou CNPJ inválido!');            $(this).val('');        }    });});