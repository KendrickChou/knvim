return {
	-- {
	-- 	'goolord/alpha-nvim',
	-- 	dependencies = { 'nvim-tree/nvim-web-devicons' },
	-- 	config = function()
	-- 		require('alpha').setup(require('alpha.themes.startify').config)
	-- 	end,
	-- },
	{
		'goolord/alpha-nvim',
		priority = 2000,
		config = function()
			local dashboard = require 'alpha.themes.dashboard'
			dashboard.section.header.val = {
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠁⠀⠀⠀⠀⠀⠈⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠉⠀⠀⠀⠀⠀⠀⡀⠀⠀⢀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⣀⣀⡴⢞⣄⣼⣠⣿⡀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠠⣶⣠⣿⣷⣧⣴⣿⣿⣿⣃⠍⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⠀⠀⠙⡿⣿⣿⣿⢿⣿⣿⣿⡟⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣀⢀⠃⢹⣿⣿⣿⣿⡿⠋⢀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣟⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣽⣿⣻⣿⣿⣿⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢟⣯⣾⣿ ]],
				[[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣯⣯⣻⣿⣿⣿ ]],
			}

			vim.api.nvim_set_hl(0, 'I2A0', { fg = '#a1d4de' })
			vim.api.nvim_set_hl(0, 'I2A1', { fg = '#a5d4e0' })
			vim.api.nvim_set_hl(0, 'I2A2', { fg = '#a1d3de' })
			vim.api.nvim_set_hl(0, 'I2A3', { fg = '#95cfdc' })
			vim.api.nvim_set_hl(0, 'I2A4', { fg = '#73c2dc' })
			vim.api.nvim_set_hl(0, 'I2A5', { fg = '#4fb1d8' })
			vim.api.nvim_set_hl(0, 'I2A6', { fg = '#3da9d7' })
			vim.api.nvim_set_hl(0, 'I2A7', { fg = '#36a6d6' })
			vim.api.nvim_set_hl(0, 'I2A8', { fg = '#44add8' })
			vim.api.nvim_set_hl(0, 'I2A9', { fg = '#56b5d9' })
			vim.api.nvim_set_hl(0, 'I2A10', { fg = '#8acadc' })
			vim.api.nvim_set_hl(0, 'I2A11', { fg = '#bfdee3' })
			vim.api.nvim_set_hl(0, 'I2A12', { fg = '#cae1e3' })
			vim.api.nvim_set_hl(0, 'I2A13', { fg = '#c2dfe3' })
			vim.api.nvim_set_hl(0, 'I2A14', { fg = '#7bc4dd' })
			vim.api.nvim_set_hl(0, 'I2A15', { fg = '#6cbedb' })
			vim.api.nvim_set_hl(0, 'I2A16', { fg = '#54b4d9' })
			vim.api.nvim_set_hl(0, 'I2A17', { fg = '#2e9ed4' })
			vim.api.nvim_set_hl(0, 'I2A18', { fg = '#2696d2' })
			vim.api.nvim_set_hl(0, 'I2A19', { fg = '#ededea' })
			vim.api.nvim_set_hl(0, 'I2A20', { fg = '#e6ece9' })
			vim.api.nvim_set_hl(0, 'I2A21', { fg = '#dfeae8' })
			vim.api.nvim_set_hl(0, 'I2A22', { fg = '#dbe8e7' })
			vim.api.nvim_set_hl(0, 'I2A23', { fg = '#dee9e8' })
			vim.api.nvim_set_hl(0, 'I2A24', { fg = '#bfc5c7' })
			vim.api.nvim_set_hl(0, 'I2A25', { fg = '#646e79' })
			vim.api.nvim_set_hl(0, 'I2A26', { fg = '#42505f' })
			vim.api.nvim_set_hl(0, 'I2A27', { fg = '#2d4054' })
			vim.api.nvim_set_hl(0, 'I2A28', { fg = '#182f49' })
			vim.api.nvim_set_hl(0, 'I2A29', { fg = '#23374f' })
			vim.api.nvim_set_hl(0, 'I2A30', { fg = '#2a5572' })
			vim.api.nvim_set_hl(0, 'I2A31', { fg = '#237cb0' })
			vim.api.nvim_set_hl(0, 'I2A32', { fg = '#f0efec' })
			vim.api.nvim_set_hl(0, 'I2A33', { fg = '#f1f0ed' })
			vim.api.nvim_set_hl(0, 'I2A34', { fg = '#eaecea' })
			vim.api.nvim_set_hl(0, 'I2A35', { fg = '#122131' })
			vim.api.nvim_set_hl(0, 'I2A36', { fg = '#15283d' })
			vim.api.nvim_set_hl(0, 'I2A37', { fg = '#0b1318' })
			vim.api.nvim_set_hl(0, 'I2A38', { fg = '#bdc3c3' })
			vim.api.nvim_set_hl(0, 'I2A39', { fg = '#0e1a24' })
			vim.api.nvim_set_hl(0, 'I2A40', { fg = '#a39892' })
			vim.api.nvim_set_hl(0, 'I2A41', { fg = '#b6a49f' })
			vim.api.nvim_set_hl(0, 'I2A42', { fg = '#5e6773' })
			vim.api.nvim_set_hl(0, 'I2A43', { fg = '#9d8e88' })
			vim.api.nvim_set_hl(0, 'I2A44', { fg = '#47494f' })
			vim.api.nvim_set_hl(0, 'I2A45', { fg = '#e7c6b9' })
			vim.api.nvim_set_hl(0, 'I2A46', { fg = '#246483' })
			vim.api.nvim_set_hl(0, 'I2A47', { fg = '#eeeeeb' })
			vim.api.nvim_set_hl(0, 'I2A48', { fg = '#3e4b59' })
			vim.api.nvim_set_hl(0, 'I2A49', { fg = '#eccbbf' })
			vim.api.nvim_set_hl(0, 'I2A50', { fg = '#3b4044' })
			vim.api.nvim_set_hl(0, 'I2A51', { fg = '#efcec2' })
			vim.api.nvim_set_hl(0, 'I2A52', { fg = '#f1d2c6' })
			vim.api.nvim_set_hl(0, 'I2A53', { fg = '#bab0ae' })
			vim.api.nvim_set_hl(0, 'I2A54', { fg = '#c1b2ae' })
			vim.api.nvim_set_hl(0, 'I2A55', { fg = '#f2d5c9' })
			vim.api.nvim_set_hl(0, 'I2A56', { fg = '#baa8a1' })
			vim.api.nvim_set_hl(0, 'I2A57', { fg = '#6d737e' })
			vim.api.nvim_set_hl(0, 'I2A58', { fg = '#404146' })
			vim.api.nvim_set_hl(0, 'I2A59', { fg = '#3f6a7a' })
			vim.api.nvim_set_hl(0, 'I2A60', { fg = '#4bb0d9' })
			vim.api.nvim_set_hl(0, 'I2A61', { fg = '#66bcda' })
			vim.api.nvim_set_hl(0, 'I2A62', { fg = '#80c6dc' })
			vim.api.nvim_set_hl(0, 'I2A63', { fg = '#38485a' })
			vim.api.nvim_set_hl(0, 'I2A64', { fg = '#454444' })
			vim.api.nvim_set_hl(0, 'I2A65', { fg = '#c4aa9f' })
			vim.api.nvim_set_hl(0, 'I2A66', { fg = '#f1d3c7' })
			vim.api.nvim_set_hl(0, 'I2A67', { fg = '#998379' })
			vim.api.nvim_set_hl(0, 'I2A68', { fg = '#5f767b' })
			vim.api.nvim_set_hl(0, 'I2A69', { fg = '#c0dfe3' })
			vim.api.nvim_set_hl(0, 'I2A70', { fg = '#a8d7df' })
			vim.api.nvim_set_hl(0, 'I2A71', { fg = '#d0e4e5' })
			vim.api.nvim_set_hl(0, 'I2A72', { fg = '#d2e4e6' })
			vim.api.nvim_set_hl(0, 'I2A73', { fg = '#9fd3dd' })
			vim.api.nvim_set_hl(0, 'I2A74', { fg = '#6dbfdb' })
			vim.api.nvim_set_hl(0, 'I2A75', { fg = '#48aed7' })
			vim.api.nvim_set_hl(0, 'I2A76', { fg = '#32a2d5' })
			vim.api.nvim_set_hl(0, 'I2A77', { fg = '#2a9ad3' })
			vim.api.nvim_set_hl(0, 'I2A78', { fg = '#babec2' })
			vim.api.nvim_set_hl(0, 'I2A79', { fg = '#19222a' })
			vim.api.nvim_set_hl(0, 'I2A80', { fg = '#30383b' })
			vim.api.nvim_set_hl(0, 'I2A81', { fg = '#7f7471' })
			vim.api.nvim_set_hl(0, 'I2A82', { fg = '#d3baaf' })
			vim.api.nvim_set_hl(0, 'I2A83', { fg = '#d6bdb2' })
			vim.api.nvim_set_hl(0, 'I2A84', { fg = '#444447' })
			vim.api.nvim_set_hl(0, 'I2A85', { fg = '#cfdad7' })
			vim.api.nvim_set_hl(0, 'I2A86', { fg = '#cde2e5' })
			vim.api.nvim_set_hl(0, 'I2A87', { fg = '#c3dfe3' })
			vim.api.nvim_set_hl(0, 'I2A88', { fg = '#a5d5de' })
			vim.api.nvim_set_hl(0, 'I2A89', { fg = '#77c4db' })
			vim.api.nvim_set_hl(0, 'I2A90', { fg = '#d6e4e0' })
			vim.api.nvim_set_hl(0, 'I2A91', { fg = '#dbe6e1' })
			vim.api.nvim_set_hl(0, 'I2A92', { fg = '#dde8e5' })
			vim.api.nvim_set_hl(0, 'I2A93', { fg = '#e3ebe9' })
			vim.api.nvim_set_hl(0, 'I2A94', { fg = '#f1e2db' })
			vim.api.nvim_set_hl(0, 'I2A95', { fg = '#d9b8aa' })
			vim.api.nvim_set_hl(0, 'I2A96', { fg = '#d0ae9f' })
			vim.api.nvim_set_hl(0, 'I2A97', { fg = '#bfb6af' })
			vim.api.nvim_set_hl(0, 'I2A98', { fg = '#c7e0e4' })
			vim.api.nvim_set_hl(0, 'I2A99', { fg = '#a6d6df' })
			vim.api.nvim_set_hl(0, 'I2A100', { fg = '#cae1e4' })
			vim.api.nvim_set_hl(0, 'I2A101', { fg = '#c7e0e3' })
			vim.api.nvim_set_hl(0, 'I2A102', { fg = '#dbddda' })
			vim.api.nvim_set_hl(0, 'I2A103', { fg = '#d5cdc8' })
			vim.api.nvim_set_hl(0, 'I2A104', { fg = '#c3b5b5' })
			vim.api.nvim_set_hl(0, 'I2A105', { fg = '#c5b5b3' })
			vim.api.nvim_set_hl(0, 'I2A106', { fg = '#ddbdb0' })
			vim.api.nvim_set_hl(0, 'I2A107', { fg = '#a59085' })
			vim.api.nvim_set_hl(0, 'I2A108', { fg = '#dabbae' })
			vim.api.nvim_set_hl(0, 'I2A109', { fg = '#e1c2b4' })
			vim.api.nvim_set_hl(0, 'I2A110', { fg = '#eed1c5' })
			vim.api.nvim_set_hl(0, 'I2A111', { fg = '#c8b6ac' })
			vim.api.nvim_set_hl(0, 'I2A112', { fg = '#f0ece5' })
			vim.api.nvim_set_hl(0, 'I2A113', { fg = '#d1d0ca' })
			vim.api.nvim_set_hl(0, 'I2A114', { fg = '#dde2e1' })
			vim.api.nvim_set_hl(0, 'I2A115', { fg = '#95d0de' })
			vim.api.nvim_set_hl(0, 'I2A116', { fg = '#b0dadf' })
			vim.api.nvim_set_hl(0, 'I2A117', { fg = '#bddde0' })
			vim.api.nvim_set_hl(0, 'I2A118', { fg = '#c0dee0' })
			vim.api.nvim_set_hl(0, 'I2A119', { fg = '#cee3e5' })
			vim.api.nvim_set_hl(0, 'I2A120', { fg = '#d6e6e7' })
			vim.api.nvim_set_hl(0, 'I2A121', { fg = '#d1d1cd' })
			vim.api.nvim_set_hl(0, 'I2A122', { fg = '#e8ddd4' })
			vim.api.nvim_set_hl(0, 'I2A123', { fg = '#d7b8ab' })
			vim.api.nvim_set_hl(0, 'I2A124', { fg = '#c6b4af' })
			vim.api.nvim_set_hl(0, 'I2A125', { fg = '#edd3c8' })
			vim.api.nvim_set_hl(0, 'I2A126', { fg = '#f1e1d7' })
			vim.api.nvim_set_hl(0, 'I2A127', { fg = '#dfcec4' })
			vim.api.nvim_set_hl(0, 'I2A128', { fg = '#b7b1ae' })
			vim.api.nvim_set_hl(0, 'I2A129', { fg = '#efe8e2' })
			vim.api.nvim_set_hl(0, 'I2A130', { fg = '#d5d0c9' })
			vim.api.nvim_set_hl(0, 'I2A131', { fg = '#efede8' })
			vim.api.nvim_set_hl(0, 'I2A132', { fg = '#d1d5d9' })
			vim.api.nvim_set_hl(0, 'I2A133', { fg = '#b3dbe0' })
			vim.api.nvim_set_hl(0, 'I2A134', { fg = '#c3dfe1' })
			vim.api.nvim_set_hl(0, 'I2A135', { fg = '#dcdcdc' })
			vim.api.nvim_set_hl(0, 'I2A136', { fg = '#bbbec0' })
			vim.api.nvim_set_hl(0, 'I2A137', { fg = '#bcbebf' })
			vim.api.nvim_set_hl(0, 'I2A138', { fg = '#bdc0c0' })
			vim.api.nvim_set_hl(0, 'I2A139', { fg = '#b8c4c6' })
			vim.api.nvim_set_hl(0, 'I2A140', { fg = '#dfe8e7' })
			vim.api.nvim_set_hl(0, 'I2A141', { fg = '#b7b6b2' })
			vim.api.nvim_set_hl(0, 'I2A142', { fg = '#e8e6e3' })
			vim.api.nvim_set_hl(0, 'I2A143', { fg = '#d2d3d5' })
			vim.api.nvim_set_hl(0, 'I2A144', { fg = '#c9cfcb' })
			vim.api.nvim_set_hl(0, 'I2A145', { fg = '#aad7dd' })
			vim.api.nvim_set_hl(0, 'I2A146', { fg = '#badde0' })
			vim.api.nvim_set_hl(0, 'I2A147', { fg = '#dee9e9' })
			vim.api.nvim_set_hl(0, 'I2A148', { fg = '#e0ded9' })
			vim.api.nvim_set_hl(0, 'I2A149', { fg = '#d8dcde' })
			vim.api.nvim_set_hl(0, 'I2A150', { fg = '#bec5c9' })
			vim.api.nvim_set_hl(0, 'I2A151', { fg = '#cacdd3' })
			vim.api.nvim_set_hl(0, 'I2A152', { fg = '#add8de' })
			vim.api.nvim_set_hl(0, 'I2A153', { fg = '#a7d5dc' })
			vim.api.nvim_set_hl(0, 'I2A154', { fg = '#dadcd7' })
			vim.api.nvim_set_hl(0, 'I2A155', { fg = '#c1bfb9' })
			vim.api.nvim_set_hl(0, 'I2A156', { fg = '#eae9e2' })
			vim.api.nvim_set_hl(0, 'I2A157', { fg = '#ced0cc' })
			vim.api.nvim_set_hl(0, 'I2A158', { fg = '#d9d8d5' })
			vim.api.nvim_set_hl(0, 'I2A159', { fg = '#c5cbd2' })
			vim.api.nvim_set_hl(0, 'I2A160', { fg = '#c2cad1' })
			vim.api.nvim_set_hl(0, 'I2A161', { fg = '#bcc5c4' })
			vim.api.nvim_set_hl(0, 'I2A162', { fg = '#cdcfca' })
			vim.api.nvim_set_hl(0, 'I2A163', { fg = '#dddbda' })
			vim.api.nvim_set_hl(0, 'I2A164', { fg = '#cfd3d0' })
			vim.api.nvim_set_hl(0, 'I2A165', { fg = '#a5a2a0' })
			vim.api.nvim_set_hl(0, 'I2A166', { fg = '#a2acb5' })
			vim.api.nvim_set_hl(0, 'I2A167', { fg = '#aca29f' })
			vim.api.nvim_set_hl(0, 'I2A168', { fg = '#d9cfc8' })
			vim.api.nvim_set_hl(0, 'I2A169', { fg = '#93d0de' })
			vim.api.nvim_set_hl(0, 'I2A170', { fg = '#82c9db' })
			vim.api.nvim_set_hl(0, 'I2A171', { fg = '#7cc6da' })
			vim.api.nvim_set_hl(0, 'I2A172', { fg = '#c8d6d5' })
			vim.api.nvim_set_hl(0, 'I2A173', { fg = '#c0bdbc' })
			vim.api.nvim_set_hl(0, 'I2A174', { fg = '#cfd4d8' })
			vim.api.nvim_set_hl(0, 'I2A175', { fg = '#c7d6db' })
			vim.api.nvim_set_hl(0, 'I2A176', { fg = '#b7dbdf' })
			vim.api.nvim_set_hl(0, 'I2A177', { fg = '#a5cace' })
			vim.api.nvim_set_hl(0, 'I2A178', { fg = '#c6cbc7' })
			vim.api.nvim_set_hl(0, 'I2A179', { fg = '#d3d5d8' })
			vim.api.nvim_set_hl(0, 'I2A180', { fg = '#b3b7ba' })
			vim.api.nvim_set_hl(0, 'I2A181', { fg = '#a0a9b0' })
			vim.api.nvim_set_hl(0, 'I2A182', { fg = '#a6acb3' })
			vim.api.nvim_set_hl(0, 'I2A183', { fg = '#ad978f' })
			dashboard.section.header.opts.hl = {
				{
					{ 'I2A0', 0, 3 },
					{ 'I2A1', 3, 6 },
					{ 'I2A2', 6, 9 },
					{ 'I2A3', 9, 12 },
					{ 'I2A4', 12, 15 },
					{ 'I2A5', 15, 18 },
					{ 'I2A6', 18, 21 },
					{ 'I2A7', 21, 24 },
					{ 'I2A8', 24, 27 },
					{ 'I2A9', 27, 30 },
					{ 'I2A10', 30, 33 },
					{ 'I2A11', 33, 36 },
					{ 'I2A12', 36, 39 },
					{ 'I2A13', 39, 42 },
					{ 'I2A2', 42, 45 },
					{ 'I2A14', 45, 48 },
					{ 'I2A15', 48, 51 },
					{ 'I2A16', 51, 54 },
					{ 'I2A8', 54, 57 },
					{ 'I2A7', 57, 60 },
					{ 'I2A17', 60, 63 },
					{ 'I2A18', 63, 66 },
					{ 'I2A18', 66, 69 },
					{ 'I2A18', 69, 72 },
					{ 'I2A18', 72, 75 },
					{ 'I2A18', 75, 78 },
					{ 'I2A18', 78, 81 },
					{ 'I2A18', 81, 84 },
					{ 'I2A18', 84, 87 },
					{ 'I2A18', 87, 90 },
					{ 'I2A18', 90, 93 },
					{ 'I2A18', 93, 96 },
					{ 'I2A18', 96, 99 },
					{ 'I2A18', 99, 102 },
					{ 'I2A18', 102, 105 },
					{ 'I2A18', 105, 108 },
					{ 'I2A18', 108, 111 },
					{ 'I2A18', 111, 114 },
					{ 'I2A18', 114, 117 },
					{ 'I2A18', 117, 120 },
				},
				{
					{ 'I2A19', 0, 3 },
					{ 'I2A19', 3, 6 },
					{ 'I2A19', 6, 9 },
					{ 'I2A20', 9, 12 },
					{ 'I2A21', 12, 15 },
					{ 'I2A21', 15, 18 },
					{ 'I2A21', 18, 21 },
					{ 'I2A21', 21, 24 },
					{ 'I2A22', 24, 27 },
					{ 'I2A23', 27, 30 },
					{ 'I2A19', 30, 33 },
					{ 'I2A19', 33, 36 },
					{ 'I2A19', 36, 39 },
					{ 'I2A24', 39, 42 },
					{ 'I2A25', 42, 45 },
					{ 'I2A26', 45, 48 },
					{ 'I2A27', 48, 51 },
					{ 'I2A28', 51, 54 },
					{ 'I2A28', 54, 57 },
					{ 'I2A28', 57, 60 },
					{ 'I2A28', 60, 63 },
					{ 'I2A29', 63, 66 },
					{ 'I2A30', 66, 69 },
					{ 'I2A31', 69, 72 },
					{ 'I2A18', 72, 75 },
					{ 'I2A18', 75, 78 },
					{ 'I2A18', 78, 81 },
					{ 'I2A18', 81, 84 },
					{ 'I2A18', 84, 87 },
					{ 'I2A18', 87, 90 },
					{ 'I2A18', 90, 93 },
					{ 'I2A18', 93, 96 },
					{ 'I2A18', 96, 99 },
					{ 'I2A18', 99, 102 },
					{ 'I2A18', 102, 105 },
					{ 'I2A18', 105, 108 },
					{ 'I2A18', 108, 111 },
					{ 'I2A18', 111, 114 },
					{ 'I2A18', 114, 117 },
					{ 'I2A18', 117, 120 },
				},
				{
					{ 'I2A19', 0, 3 },
					{ 'I2A19', 3, 6 },
					{ 'I2A19', 6, 9 },
					{ 'I2A19', 9, 12 },
					{ 'I2A19', 12, 15 },
					{ 'I2A19', 15, 18 },
					{ 'I2A19', 18, 21 },
					{ 'I2A32', 21, 24 },
					{ 'I2A32', 24, 27 },
					{ 'I2A33', 27, 30 },
					{ 'I2A19', 30, 33 },
					{ 'I2A34', 33, 36 },
					{ 'I2A26', 36, 39 },
					{ 'I2A29', 39, 42 },
					{ 'I2A28', 42, 45 },
					{ 'I2A28', 45, 48 },
					{ 'I2A28', 48, 51 },
					{ 'I2A28', 51, 54 },
					{ 'I2A28', 54, 57 },
					{ 'I2A35', 57, 60 },
					{ 'I2A28', 60, 63 },
					{ 'I2A36', 63, 66 },
					{ 'I2A36', 66, 69 },
					{ 'I2A28', 69, 72 },
					{ 'I2A37', 72, 75 },
					{ 'I2A31', 75, 78 },
					{ 'I2A18', 78, 81 },
					{ 'I2A18', 81, 84 },
					{ 'I2A18', 84, 87 },
					{ 'I2A18', 87, 90 },
					{ 'I2A18', 90, 93 },
					{ 'I2A18', 93, 96 },
					{ 'I2A18', 96, 99 },
					{ 'I2A18', 99, 102 },
					{ 'I2A18', 102, 105 },
					{ 'I2A18', 105, 108 },
					{ 'I2A18', 108, 111 },
					{ 'I2A18', 111, 114 },
					{ 'I2A18', 114, 117 },
					{ 'I2A18', 117, 120 },
				},
				{
					{ 'I2A19', 0, 3 },
					{ 'I2A19', 3, 6 },
					{ 'I2A19', 6, 9 },
					{ 'I2A19', 9, 12 },
					{ 'I2A19', 12, 15 },
					{ 'I2A19', 15, 18 },
					{ 'I2A19', 18, 21 },
					{ 'I2A19', 21, 24 },
					{ 'I2A19', 24, 27 },
					{ 'I2A32', 27, 30 },
					{ 'I2A38', 30, 33 },
					{ 'I2A26', 33, 36 },
					{ 'I2A29', 36, 39 },
					{ 'I2A28', 39, 42 },
					{ 'I2A36', 42, 45 },
					{ 'I2A36', 45, 48 },
					{ 'I2A39', 48, 51 },
					{ 'I2A40', 51, 54 },
					{ 'I2A41', 54, 57 },
					{ 'I2A42', 57, 60 },
					{ 'I2A43', 60, 63 },
					{ 'I2A44', 63, 66 },
					{ 'I2A45', 66, 69 },
					{ 'I2A37', 69, 72 },
					{ 'I2A37', 72, 75 },
					{ 'I2A46', 75, 78 },
					{ 'I2A18', 78, 81 },
					{ 'I2A18', 81, 84 },
					{ 'I2A18', 84, 87 },
					{ 'I2A18', 87, 90 },
					{ 'I2A18', 90, 93 },
					{ 'I2A18', 93, 96 },
					{ 'I2A18', 96, 99 },
					{ 'I2A18', 99, 102 },
					{ 'I2A18', 102, 105 },
					{ 'I2A18', 105, 108 },
					{ 'I2A18', 108, 111 },
					{ 'I2A18', 111, 114 },
					{ 'I2A18', 114, 117 },
					{ 'I2A18', 117, 120 },
				},
				{
					{ 'I2A19', 0, 3 },
					{ 'I2A19', 3, 6 },
					{ 'I2A19', 6, 9 },
					{ 'I2A19', 9, 12 },
					{ 'I2A19', 12, 15 },
					{ 'I2A19', 15, 18 },
					{ 'I2A19', 18, 21 },
					{ 'I2A19', 21, 24 },
					{ 'I2A32', 24, 27 },
					{ 'I2A47', 27, 30 },
					{ 'I2A26', 30, 33 },
					{ 'I2A27', 33, 36 },
					{ 'I2A48', 36, 39 },
					{ 'I2A49', 39, 42 },
					{ 'I2A50', 42, 45 },
					{ 'I2A51', 45, 48 },
					{ 'I2A52', 48, 51 },
					{ 'I2A53', 51, 54 },
					{ 'I2A54', 54, 57 },
					{ 'I2A55', 57, 60 },
					{ 'I2A55', 60, 63 },
					{ 'I2A56', 63, 66 },
					{ 'I2A57', 66, 69 },
					{ 'I2A58', 69, 72 },
					{ 'I2A59', 72, 75 },
					{ 'I2A60', 75, 78 },
					{ 'I2A8', 78, 81 },
					{ 'I2A5', 81, 84 },
					{ 'I2A61', 84, 87 },
					{ 'I2A62', 87, 90 },
					{ 'I2A4', 90, 93 },
					{ 'I2A61', 93, 96 },
					{ 'I2A8', 96, 99 },
					{ 'I2A7', 99, 102 },
					{ 'I2A7', 102, 105 },
					{ 'I2A17', 105, 108 },
					{ 'I2A18', 108, 111 },
					{ 'I2A18', 111, 114 },
					{ 'I2A18', 114, 117 },
					{ 'I2A18', 117, 120 },
				},
				{
					{ 'I2A19', 0, 3 },
					{ 'I2A19', 3, 6 },
					{ 'I2A19', 6, 9 },
					{ 'I2A19', 9, 12 },
					{ 'I2A19', 12, 15 },
					{ 'I2A19', 15, 18 },
					{ 'I2A19', 18, 21 },
					{ 'I2A19', 21, 24 },
					{ 'I2A19', 24, 27 },
					{ 'I2A19', 27, 30 },
					{ 'I2A26', 30, 33 },
					{ 'I2A63', 33, 36 },
					{ 'I2A36', 36, 39 },
					{ 'I2A64', 39, 42 },
					{ 'I2A65', 42, 45 },
					{ 'I2A51', 45, 48 },
					{ 'I2A55', 48, 51 },
					{ 'I2A55', 51, 54 },
					{ 'I2A66', 54, 57 },
					{ 'I2A55', 57, 60 },
					{ 'I2A52', 60, 63 },
					{ 'I2A52', 63, 66 },
					{ 'I2A67', 66, 69 },
					{ 'I2A37', 69, 72 },
					{ 'I2A68', 72, 75 },
					{ 'I2A69', 75, 78 },
					{ 'I2A70', 78, 81 },
					{ 'I2A71', 81, 84 },
					{ 'I2A21', 84, 87 },
					{ 'I2A21', 87, 90 },
					{ 'I2A21', 90, 93 },
					{ 'I2A21', 93, 96 },
					{ 'I2A21', 96, 99 },
					{ 'I2A72', 99, 102 },
					{ 'I2A73', 102, 105 },
					{ 'I2A74', 105, 108 },
					{ 'I2A75', 108, 111 },
					{ 'I2A76', 111, 114 },
					{ 'I2A77', 114, 117 },
					{ 'I2A18', 117, 120 },
				},
				{
					{ 'I2A19', 0, 3 },
					{ 'I2A19', 3, 6 },
					{ 'I2A19', 6, 9 },
					{ 'I2A19', 9, 12 },
					{ 'I2A19', 12, 15 },
					{ 'I2A19', 15, 18 },
					{ 'I2A19', 18, 21 },
					{ 'I2A20', 21, 24 },
					{ 'I2A20', 24, 27 },
					{ 'I2A19', 27, 30 },
					{ 'I2A19', 30, 33 },
					{ 'I2A78', 33, 36 },
					{ 'I2A26', 36, 39 },
					{ 'I2A79', 39, 42 },
					{ 'I2A80', 42, 45 },
					{ 'I2A81', 45, 48 },
					{ 'I2A82', 48, 51 },
					{ 'I2A55', 51, 54 },
					{ 'I2A55', 54, 57 },
					{ 'I2A55', 57, 60 },
					{ 'I2A83', 60, 63 },
					{ 'I2A84', 63, 66 },
					{ 'I2A39', 66, 69 },
					{ 'I2A29', 69, 72 },
					{ 'I2A85', 72, 75 },
					{ 'I2A21', 75, 78 },
					{ 'I2A21', 78, 81 },
					{ 'I2A21', 81, 84 },
					{ 'I2A21', 84, 87 },
					{ 'I2A21', 87, 90 },
					{ 'I2A21', 90, 93 },
					{ 'I2A21', 93, 96 },
					{ 'I2A21', 96, 99 },
					{ 'I2A86', 99, 102 },
					{ 'I2A87', 102, 105 },
					{ 'I2A88', 105, 108 },
					{ 'I2A89', 108, 111 },
					{ 'I2A5', 111, 114 },
					{ 'I2A7', 114, 117 },
					{ 'I2A76', 117, 120 },
				},
				{
					{ 'I2A21', 0, 3 },
					{ 'I2A21', 3, 6 },
					{ 'I2A21', 6, 9 },
					{ 'I2A90', 9, 12 },
					{ 'I2A91', 12, 15 },
					{ 'I2A92', 15, 18 },
					{ 'I2A21', 18, 21 },
					{ 'I2A93', 21, 24 },
					{ 'I2A19', 24, 27 },
					{ 'I2A19', 27, 30 },
					{ 'I2A19', 30, 33 },
					{ 'I2A19', 33, 36 },
					{ 'I2A19', 36, 39 },
					{ 'I2A19', 39, 42 },
					{ 'I2A19', 42, 45 },
					{ 'I2A94', 45, 48 },
					{ 'I2A55', 48, 51 },
					{ 'I2A55', 51, 54 },
					{ 'I2A95', 54, 57 },
					{ 'I2A96', 57, 60 },
					{ 'I2A97', 60, 63 },
					{ 'I2A20', 63, 66 },
					{ 'I2A21', 66, 69 },
					{ 'I2A21', 69, 72 },
					{ 'I2A21', 72, 75 },
					{ 'I2A93', 75, 78 },
					{ 'I2A19', 78, 81 },
					{ 'I2A20', 81, 84 },
					{ 'I2A21', 84, 87 },
					{ 'I2A21', 87, 90 },
					{ 'I2A21', 90, 93 },
					{ 'I2A21', 93, 96 },
					{ 'I2A21', 96, 99 },
					{ 'I2A21', 99, 102 },
					{ 'I2A21', 102, 105 },
					{ 'I2A86', 105, 108 },
					{ 'I2A98', 108, 111 },
					{ 'I2A99', 111, 114 },
					{ 'I2A89', 114, 117 },
					{ 'I2A6', 117, 120 },
				},
				{
					{ 'I2A86', 0, 3 },
					{ 'I2A86', 3, 6 },
					{ 'I2A100', 6, 9 },
					{ 'I2A101', 9, 12 },
					{ 'I2A86', 12, 15 },
					{ 'I2A21', 15, 18 },
					{ 'I2A34', 18, 21 },
					{ 'I2A19', 21, 24 },
					{ 'I2A19', 24, 27 },
					{ 'I2A19', 27, 30 },
					{ 'I2A19', 30, 33 },
					{ 'I2A102', 33, 36 },
					{ 'I2A103', 36, 39 },
					{ 'I2A104', 39, 42 },
					{ 'I2A105', 42, 45 },
					{ 'I2A55', 45, 48 },
					{ 'I2A55', 48, 51 },
					{ 'I2A55', 51, 54 },
					{ 'I2A106', 54, 57 },
					{ 'I2A107', 57, 60 },
					{ 'I2A108', 60, 63 },
					{ 'I2A109', 63, 66 },
					{ 'I2A110', 66, 69 },
					{ 'I2A111', 69, 72 },
					{ 'I2A112', 72, 75 },
					{ 'I2A112', 75, 78 },
					{ 'I2A112', 78, 81 },
					{ 'I2A112', 81, 84 },
					{ 'I2A112', 84, 87 },
					{ 'I2A113', 87, 90 },
					{ 'I2A114', 90, 93 },
					{ 'I2A21', 93, 96 },
					{ 'I2A21', 96, 99 },
					{ 'I2A21', 99, 102 },
					{ 'I2A21', 102, 105 },
					{ 'I2A21', 105, 108 },
					{ 'I2A21', 108, 111 },
					{ 'I2A22', 111, 114 },
					{ 'I2A98', 114, 117 },
					{ 'I2A115', 117, 120 },
				},
				{
					{ 'I2A116', 0, 3 },
					{ 'I2A117', 3, 6 },
					{ 'I2A118', 6, 9 },
					{ 'I2A119', 9, 12 },
					{ 'I2A120', 12, 15 },
					{ 'I2A20', 15, 18 },
					{ 'I2A19', 18, 21 },
					{ 'I2A34', 21, 24 },
					{ 'I2A121', 24, 27 },
					{ 'I2A47', 27, 30 },
					{ 'I2A19', 30, 33 },
					{ 'I2A122', 33, 36 },
					{ 'I2A123', 36, 39 },
					{ 'I2A124', 39, 42 },
					{ 'I2A55', 42, 45 },
					{ 'I2A125', 45, 48 },
					{ 'I2A126', 48, 51 },
					{ 'I2A127', 51, 54 },
					{ 'I2A128', 54, 57 },
					{ 'I2A129', 57, 60 },
					{ 'I2A112', 60, 63 },
					{ 'I2A112', 63, 66 },
					{ 'I2A112', 66, 69 },
					{ 'I2A112', 69, 72 },
					{ 'I2A112', 72, 75 },
					{ 'I2A112', 75, 78 },
					{ 'I2A112', 78, 81 },
					{ 'I2A130', 81, 84 },
					{ 'I2A112', 84, 87 },
					{ 'I2A112', 87, 90 },
					{ 'I2A131', 90, 93 },
					{ 'I2A132', 93, 96 },
					{ 'I2A21', 96, 99 },
					{ 'I2A93', 99, 102 },
					{ 'I2A20', 102, 105 },
					{ 'I2A21', 105, 108 },
					{ 'I2A21', 108, 111 },
					{ 'I2A93', 111, 114 },
					{ 'I2A20', 114, 117 },
					{ 'I2A34', 117, 120 },
				},
				{
					{ 'I2A133', 0, 3 },
					{ 'I2A117', 3, 6 },
					{ 'I2A134', 6, 9 },
					{ 'I2A86', 9, 12 },
					{ 'I2A86', 12, 15 },
					{ 'I2A120', 15, 18 },
					{ 'I2A120', 18, 21 },
					{ 'I2A86', 21, 24 },
					{ 'I2A135', 24, 27 },
					{ 'I2A131', 27, 30 },
					{ 'I2A112', 30, 33 },
					{ 'I2A112', 33, 36 },
					{ 'I2A112', 36, 39 },
					{ 'I2A112', 39, 42 },
					{ 'I2A112', 42, 45 },
					{ 'I2A112', 45, 48 },
					{ 'I2A112', 48, 51 },
					{ 'I2A112', 51, 54 },
					{ 'I2A112', 54, 57 },
					{ 'I2A112', 57, 60 },
					{ 'I2A112', 60, 63 },
					{ 'I2A112', 63, 66 },
					{ 'I2A112', 66, 69 },
					{ 'I2A112', 69, 72 },
					{ 'I2A112', 72, 75 },
					{ 'I2A112', 75, 78 },
					{ 'I2A136', 78, 81 },
					{ 'I2A112', 81, 84 },
					{ 'I2A112', 84, 87 },
					{ 'I2A112', 87, 90 },
					{ 'I2A112', 90, 93 },
					{ 'I2A112', 93, 96 },
					{ 'I2A137', 96, 99 },
					{ 'I2A138', 99, 102 },
					{ 'I2A139', 102, 105 },
					{ 'I2A21', 105, 108 },
					{ 'I2A21', 108, 111 },
					{ 'I2A20', 111, 114 },
					{ 'I2A19', 114, 117 },
					{ 'I2A19', 117, 120 },
				},
				{
					{ 'I2A133', 0, 3 },
					{ 'I2A133', 3, 6 },
					{ 'I2A117', 6, 9 },
					{ 'I2A118', 9, 12 },
					{ 'I2A118', 12, 15 },
					{ 'I2A118', 15, 18 },
					{ 'I2A100', 18, 21 },
					{ 'I2A86', 21, 24 },
					{ 'I2A140', 24, 27 },
					{ 'I2A112', 27, 30 },
					{ 'I2A112', 30, 33 },
					{ 'I2A112', 33, 36 },
					{ 'I2A112', 36, 39 },
					{ 'I2A112', 39, 42 },
					{ 'I2A112', 42, 45 },
					{ 'I2A112', 45, 48 },
					{ 'I2A112', 48, 51 },
					{ 'I2A112', 51, 54 },
					{ 'I2A112', 54, 57 },
					{ 'I2A112', 57, 60 },
					{ 'I2A112', 60, 63 },
					{ 'I2A112', 63, 66 },
					{ 'I2A112', 66, 69 },
					{ 'I2A112', 69, 72 },
					{ 'I2A112', 72, 75 },
					{ 'I2A141', 75, 78 },
					{ 'I2A112', 78, 81 },
					{ 'I2A112', 81, 84 },
					{ 'I2A112', 84, 87 },
					{ 'I2A112', 87, 90 },
					{ 'I2A112', 90, 93 },
					{ 'I2A112', 93, 96 },
					{ 'I2A112', 96, 99 },
					{ 'I2A112', 99, 102 },
					{ 'I2A142', 102, 105 },
					{ 'I2A143', 105, 108 },
					{ 'I2A132', 108, 111 },
					{ 'I2A144', 111, 114 },
					{ 'I2A21', 114, 117 },
					{ 'I2A21', 117, 120 },
				},
				{
					{ 'I2A145', 0, 3 },
					{ 'I2A116', 3, 6 },
					{ 'I2A133', 6, 9 },
					{ 'I2A146', 9, 12 },
					{ 'I2A146', 12, 15 },
					{ 'I2A134', 15, 18 },
					{ 'I2A101', 18, 21 },
					{ 'I2A101', 21, 24 },
					{ 'I2A147', 24, 27 },
					{ 'I2A148', 27, 30 },
					{ 'I2A112', 30, 33 },
					{ 'I2A112', 33, 36 },
					{ 'I2A112', 36, 39 },
					{ 'I2A112', 39, 42 },
					{ 'I2A112', 42, 45 },
					{ 'I2A112', 45, 48 },
					{ 'I2A112', 48, 51 },
					{ 'I2A112', 51, 54 },
					{ 'I2A112', 54, 57 },
					{ 'I2A112', 57, 60 },
					{ 'I2A112', 60, 63 },
					{ 'I2A112', 63, 66 },
					{ 'I2A112', 66, 69 },
					{ 'I2A112', 69, 72 },
					{ 'I2A129', 72, 75 },
					{ 'I2A112', 75, 78 },
					{ 'I2A112', 78, 81 },
					{ 'I2A112', 81, 84 },
					{ 'I2A112', 84, 87 },
					{ 'I2A112', 87, 90 },
					{ 'I2A112', 90, 93 },
					{ 'I2A112', 93, 96 },
					{ 'I2A112', 96, 99 },
					{ 'I2A112', 99, 102 },
					{ 'I2A112', 102, 105 },
					{ 'I2A112', 105, 108 },
					{ 'I2A149', 108, 111 },
					{ 'I2A150', 111, 114 },
					{ 'I2A151', 114, 117 },
					{ 'I2A21', 117, 120 },
				},
				{
					{ 'I2A152', 0, 3 },
					{ 'I2A152', 3, 6 },
					{ 'I2A153', 6, 9 },
					{ 'I2A153', 9, 12 },
					{ 'I2A153', 12, 15 },
					{ 'I2A153', 15, 18 },
					{ 'I2A153', 18, 21 },
					{ 'I2A145', 21, 24 },
					{ 'I2A154', 24, 27 },
					{ 'I2A155', 27, 30 },
					{ 'I2A112', 30, 33 },
					{ 'I2A112', 33, 36 },
					{ 'I2A112', 36, 39 },
					{ 'I2A112', 39, 42 },
					{ 'I2A112', 42, 45 },
					{ 'I2A112', 45, 48 },
					{ 'I2A112', 48, 51 },
					{ 'I2A112', 51, 54 },
					{ 'I2A112', 54, 57 },
					{ 'I2A112', 57, 60 },
					{ 'I2A156', 60, 63 },
					{ 'I2A157', 63, 66 },
					{ 'I2A158', 66, 69 },
					{ 'I2A159', 69, 72 },
					{ 'I2A160', 72, 75 },
					{ 'I2A160', 75, 78 },
					{ 'I2A161', 78, 81 },
					{ 'I2A162', 81, 84 },
					{ 'I2A112', 84, 87 },
					{ 'I2A112', 87, 90 },
					{ 'I2A112', 90, 93 },
					{ 'I2A112', 93, 96 },
					{ 'I2A163', 96, 99 },
					{ 'I2A164', 99, 102 },
					{ 'I2A165', 102, 105 },
					{ 'I2A166', 105, 108 },
					{ 'I2A167', 108, 111 },
					{ 'I2A55', 111, 114 },
					{ 'I2A55', 114, 117 },
					{ 'I2A168', 117, 120 },
				},
				{
					{ 'I2A169', 0, 3 },
					{ 'I2A170', 3, 6 },
					{ 'I2A170', 6, 9 },
					{ 'I2A171', 9, 12 },
					{ 'I2A171', 12, 15 },
					{ 'I2A170', 15, 18 },
					{ 'I2A169', 18, 21 },
					{ 'I2A172', 21, 24 },
					{ 'I2A112', 24, 27 },
					{ 'I2A173', 27, 30 },
					{ 'I2A112', 30, 33 },
					{ 'I2A112', 33, 36 },
					{ 'I2A112', 36, 39 },
					{ 'I2A112', 39, 42 },
					{ 'I2A112', 42, 45 },
					{ 'I2A112', 45, 48 },
					{ 'I2A112', 48, 51 },
					{ 'I2A112', 51, 54 },
					{ 'I2A112', 54, 57 },
					{ 'I2A112', 57, 60 },
					{ 'I2A112', 60, 63 },
					{ 'I2A174', 63, 66 },
					{ 'I2A160', 66, 69 },
					{ 'I2A160', 69, 72 },
					{ 'I2A160', 72, 75 },
					{ 'I2A175', 75, 78 },
					{ 'I2A101', 78, 81 },
					{ 'I2A100', 81, 84 },
					{ 'I2A176', 84, 87 },
					{ 'I2A177', 87, 90 },
					{ 'I2A178', 90, 93 },
					{ 'I2A179', 93, 96 },
					{ 'I2A180', 96, 99 },
					{ 'I2A181', 99, 102 },
					{ 'I2A182', 102, 105 },
					{ 'I2A183', 105, 108 },
					{ 'I2A95', 108, 111 },
					{ 'I2A109', 111, 114 },
					{ 'I2A66', 114, 117 },
					{ 'I2A55', 117, 120 },
				},
			}
			local function button(sc, txt, leader_txt, keybind, keybind_opts)
				local sc_after = sc:gsub('%s', ''):gsub(leader_txt, '<leader>')

				local opts = {
					position = 'center',
					shortcut = sc,
					cursor = 5,
					width = 50,
					align_shortcut = 'right',
					hl = 'AlphaButtons',
					hl_shortcut = 'AlphaShortcut',
				}

				if nil == keybind then
					keybind = sc_after
				end
				keybind_opts = vim.F.if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
				opts.keymap = { 'n', sc_after, keybind, keybind_opts }

				local function on_press()
					-- local key = vim.api.nvim_replace_termcodes(keybind .. '<Ignore>', true, false, true)
					local key = vim.api.nvim_replace_termcodes(sc_after .. '<Ignore>', true, false, true)
					vim.api.nvim_feedkeys(key, 't', false)
				end

				return {
					type = 'button',
					val = txt,
					on_press = on_press,
					opts = opts,
				}
			end
			local leader = ' '
			dashboard.section.buttons.val = {
				-- button('space f c', ' Scheme change', leader, nil, {
				-- 	noremap = true,
				-- 	silent = true,
				-- 	nowait = true,
				-- 	callback = function()
				-- 		require('telescope.builtin').colorscheme()
				-- 	end,
				-- }),
				-- button('space f r', ' File frecency', leader, nil, {
				-- 	noremap = true,
				-- 	silent = true,
				-- 	nowait = true,
				-- 	callback = function()
				-- 		require('telescope').extensions.frecency.frecency {}
				-- 	end,
				-- }),
				-- button('space f e', '󰋚 File history', leader, nil, {
				-- 	noremap = true,
				-- 	silent = true,
				-- 	nowait = true,
				-- 	callback = function()
				-- 		require('telescope.builtin').oldfiles()
				-- 	end,
				-- }),
				-- button('space f p', ' Project find', leader, nil, {
				-- 	noremap = true,
				-- 	silent = true,
				-- 	nowait = true,
				-- 	callback = function()
				-- 		require('telescope').extensions.projects.projects {}
				-- 	end,
				-- }),
				button('space f f', '󰈞 [F]ile [F]ind', leader, nil, {
					noremap = true,
					silent = true,
					nowait = true,
					callback = function()
						require('telescope.builtin').find_files()
					end,
				}),
				button('space f n', ' [F]ile [N]eovim files', leader, nil, {
					noremap = true,
					silent = true,
					nowait = true,
					callback = function()
						vim.api.nvim_command 'enew'
					end,
				}),
				button('space f w', ' [F]ind [W]ord', leader, nil, {
					noremap = true,
					silent = true,
					nowait = true,
					callback = function()
						require('telescope.builtin').live_grep()
					end,
				}),
			}
			dashboard.section.buttons.opts.hl = 'AlphaButtons'
			require('alpha').setup(dashboard.opts)
		end,
	},
}
