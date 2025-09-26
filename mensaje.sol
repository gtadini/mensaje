//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/*
 @title Contrato Mensaje
 @author gtadini
 @notice Este contrato forma parte del mi primer proyecto
 @custom:security Este es un contrato educativo y no debe ser usado en producción
 */

contract Mensaje {
    /*
	@notice Función utilizada para almacenar un mensaje en una blockchain
	@param _mensagem input do tipo string
*/

    function setMensagem(string memory _mensagem) external {
        s_mensaje = _mensagem;

        emit Mensagem_MensagemAtualizada(_mensagem);
    }
    //el parámetro de entrada tiene el prefijo _

    /// @notice variable para almacenar mensajes
    string public s_mensaje; //s_mensaje la s es de state, se trata de una variable de estado

    /**
     *@notice funcion get para retornar a mensagem almacenada
     *@return _mensagem almacenada
     */
    function getMensagem() public view returns (string memory mensagem_) {
        mensagem_ = s_mensagem;
    }
}
