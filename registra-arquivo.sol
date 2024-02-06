/*
SPDX-License-Identifier: CC-BY-4.0
(c) Desenvolvido por Matheus Christianini
This work is licensed under a Creative Commons Attribution 4.0 International License.
*/
// Contrato na rede Sepolia 0xb46Cb8191E44677D6155C1fDBA78c29D268410E1
pragma solidity 0.8.19;

/// @author Matheus Christianini
/// @title Contrato que registra nomes de arquivos para enderecos de carteira
contract RegistraArquivo {

    mapping(address=>string) public atribuiNomeArquivoParaEndCarteira;

    event AconteceuUmRegistroDeArquivo(address paraQuem, string nomeArquivo);

    // @notice Registra um arquivo atrelado a uma carteira
    // @dev Atribui o nome de arquivo no mapa carteiraNomeArquivo atrelando a um endereco de carteira
    // @param nomeArquivo Nome do arquivo para atrelar a uma carteira
    function registrarNomeArquivo(string memory nomeArquivo) public {
        atribuiNomeArquivoParaEndCarteira[msg.sender] = nomeArquivo;
        emit AconteceuUmRegistroDeArquivo(msg.sender, nomeArquivo);
    }

}
