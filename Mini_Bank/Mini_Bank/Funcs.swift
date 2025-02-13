//
//  Funcs.swift
//  Mini_Bank
//
//  Created by Neşat Aslan on 13.02.2025.
//

import Foundation

var BankAccounts: [Account] = []
var currentAccount: Int = -1

func Hello(){
    print("1.Hesap Oluştur")
    print("2.Giriş Yap")
    print("3.Uygulamayı Kapat")
    let a = readLine()
    if a == "1" {
        CreateAccount()
    }
    else if a == "2" {
        SignInAccount()
    }
    else if a == "3" {
        exit(0)
    }
}
func SignInAccount() {
    print("Hesap Numaranızı Girin:")
    print("Uygulamayı kapatmak için 0 girin")
    
    let accountNumber: Int = Int(readLine() ?? "0") ?? 0
    if accountNumber == 0 {
        exit(0)
    }
    var found = false
    
    for (index, account) in BankAccounts.enumerated() {
        if account.accountNumber == accountNumber {
            found = true
            currentAccount = index
            print("Giriş Başarılı")
            print("Hoş geldiniz, \(account.ownerName)")
            AccountManage()
            return
        }
    }
    
    if !found {
        print("Hesap Bulunamadı")
        SignInAccount()
    }
}
func CreateAccount() {
    print("İsminizi girin: ")
    let name: String = readLine() ?? "noName"
    var accountNumber: Int
    
    repeat {
        accountNumber = Int.random(in: 10000...99999)
    } while BankAccounts.contains(where: { $0.accountNumber == accountNumber })
    
    let newAccount = Account(accountNumber: accountNumber, ownerName: name, balance: 0)
    BankAccounts.append(newAccount)
    
    print("Hesap Oluşturuldu. Hesap Numarası: \(newAccount.accountNumber)")
    print("Hesap Sahibi: \(newAccount.ownerName)")
    print("Başlangıç Bakiyesi: \(newAccount.balance)")
    print("------------------------")
    Hello()
}

func AccountManage() {
    print("1. Bakiye Görüntüle")
    print("2. Para Yatır")
    print("3. Para Çek")
    print("4. Çıkış")
    
    let a: String = readLine() ?? "0"
    
    if a == "1" {
        Balance(i: currentAccount)
        AccountManage()
    }
    else if a == "2" {
        Deposit(i: currentAccount)
        AccountManage()
    }
    else if a == "3"{
        Withdraw(i: currentAccount)
    }
    
    else if a == "4" {
        Hello()
    }
    
}

func Exit() {
    print("Programdan Çıkış Yapıldı")
    Hello()
    
}

func Balance(i : Int) {
    print("Bakiyeniz: \(BankAccounts[i].balance)")
    AccountManage()
}

func Deposit(i: Int) {
    print("Para Miktarınızı Girin: ")
    let deposit: Double = Double(readLine() ?? "0") ?? 0
    BankAccounts[i].balance += deposit
    print("Para Yatırıldı. Bakiyeniz: \(BankAccounts[i].balance)")
    AccountManage()
}

func Withdraw(i: Int) {
    print("Para Miktarınızı Girin: ")
    let withdraw: Double = Double(readLine() ?? "0") ?? 0
    if withdraw > BankAccounts[i].balance {
        print("Bakiyeniz Yetersiz")
        AccountManage()
    }
    else {
        BankAccounts[i].balance -= withdraw
        print("Para Çekilde. Bakiyeniz: \(BankAccounts[i].balance)")
        AccountManage()
    }
}
    
