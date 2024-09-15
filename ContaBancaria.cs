using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Questao_1
{
    internal class ContaBancaria
    {
        private int _numeroConta;
        private string _nomeTitular;
        private double _saldo;
        public ContaBancaria(int numeroConta, string nomeTitular, double depositoInicial = 0)
        {
            _numeroConta = numeroConta;
            _nomeTitular = nomeTitular;
            _saldo = depositoInicial;
        }
        public void Depositar(double valor)
        {
            _saldo += valor;
        }
        public void Sacar(double valor)
        {
            //if (_saldo - valor - 3.50 <= 0)
            //{
            //    Console.WriteLine("Saldo insuficiente para realizar o saque.");
            //}
            //else
            //{
                Console.WriteLine("Saldo insuficiente para realizar o saque. Consumira do cheque-especial saldo ira se tornar negativo");
                _saldo -= valor + 3.50;
            //}
        }
        public void AlterarTitular(string novoNomeTitular)
        {
            _nomeTitular = novoNomeTitular;
        }
        public override string ToString()
        {
            return $"Conta {_numeroConta}, Titular: {_nomeTitular}, Saldo: ${_saldo:F2}";
        }
    }
}
