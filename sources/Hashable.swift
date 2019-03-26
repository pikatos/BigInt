//
//  Hashable.swift
//  BigInt
//
//  Created by Károly Lőrentey on 2016-01-03.
//  Copyright © 2016-2017 Károly Lőrentey.
//

extension BigUInt: Hashable {
	public func hash(into hasher: inout Hasher) {
		words.forEach { hasher.combine($0) }
	}
}

extension BigInt: Hashable {
	public func hash(into hasher: inout Hasher) {
		hasher.combine(sign)
		hasher.combine(magnitude)
	}
}
