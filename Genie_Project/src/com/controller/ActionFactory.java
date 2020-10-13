package com.controller;

import com.controller.action.Action;
import com.controller.action.Chart_MV_day_action;
import com.controller.action.Chart_MV_month_action;
import com.controller.action.Chart_MV_week_action;
import com.controller.action.Chart_genre_OST_day_action;
import com.controller.action.Chart_genre_OST_week_action;
import com.controller.action.Chart_genre_kpop_day_action;
import com.controller.action.Chart_genre_kpop_week_action;
import com.controller.action.Chart_genre_pop_day_action;
import com.controller.action.Chart_genre_pop_week_action;
import com.controller.action.Chart_genre_trot_day_action;
import com.controller.action.Chart_genre_trot_week_action;
import com.controller.action.Chart_top200_day_action;
import com.controller.action.Chart_top200_month_action;
import com.controller.action.Chart_top200_present_action;
import com.controller.action.Chart_top200_week_action;
import com.controller.action.Genre_OST_all_action;
import com.controller.action.Genre_OST_drama_action;
import com.controller.action.Genre_OST_fmovie_action;
import com.controller.action.Genre_OST_kmovie_action;
import com.controller.action.Genre_kpop_RNB_action;
import com.controller.action.Genre_kpop_all_action;
import com.controller.action.Genre_kpop_ballad_action;
import com.controller.action.Genre_kpop_dance_action;
import com.controller.action.Genre_kpop_hiphop_action;
import com.controller.action.Genre_kpop_rock_action;
import com.controller.action.Genre_pop_RNB_action;
import com.controller.action.Genre_pop_all_action;
import com.controller.action.Genre_pop_hiphop_action;
import com.controller.action.Genre_pop_pop_action;
import com.controller.action.Genre_pop_rock_action;
import com.controller.action.Genre_trot_action;
import com.controller.action.Newest_album_all_action;
import com.controller.action.Newest_album_hot_action;
import com.controller.action.Newest_song_all_action;
import com.controller.action.Newest_song_hot_action;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" + command);
		/* 추가된 부분 */
		if (command.equals("Chart_genre_kpop_day")) {
			action = new Chart_genre_kpop_day_action();
		} else if (command.equals("Chart_genre_kpop_week")) {
			action = new Chart_genre_kpop_week_action();
		} else if (command.equals("Chart_genre_OST_day")) {
			action = new Chart_genre_OST_day_action();
		} else if (command.equals("Chart_genre_OST_week")) {
			action = new Chart_genre_OST_week_action();
		} else if (command.equals("Chart_genre_pop_day")) {
			action = new Chart_genre_pop_day_action();
		} else if (command.equals("Chart_genre_pop_week")) {
			action = new Chart_genre_pop_week_action();
		} else if (command.equals("Chart_genre_trot_day")) {
			action = new Chart_genre_trot_day_action();
		} else if (command.equals("Chart_genre_trot_week")) {
			action = new Chart_genre_trot_week_action();
		} else if (command.equals("Chart_MV_day")) {
			action = new Chart_MV_day_action();
		} else if (command.equals("Chart_MV_month")) {
			action = new Chart_MV_month_action();
		} else if (command.equals("Chart_MV_week")) {
			action = new Chart_MV_week_action();
		} else if (command.equals("Chart_top200_day")) {
			action = new Chart_top200_day_action();
		} else if (command.equals("Chart_top200_month")) {
			action = new Chart_top200_month_action();
		} else if (command.equals("Chart_top200_present")) {
			action = new Chart_top200_present_action();
		} else if (command.equals("Chart_top200_week")) {
			action = new Chart_top200_week_action();
		} else if (command.equals("Genre_kpop_all")) {
			action = new Genre_kpop_all_action();
		} else if (command.equals("Genre_kpop_ballad")) {
			action = new Genre_kpop_ballad_action();
		} else if (command.equals("Genre_kpop_dance")) {
			action = new Genre_kpop_dance_action();
		} else if (command.equals("Genre_kpop_hiphop")) {
			action = new Genre_kpop_hiphop_action();
		} else if (command.equals("Genre_kpop_RNB")) {
			action = new Genre_kpop_RNB_action();
		} else if (command.equals("Genre_kpop_rock")) {
			action = new Genre_kpop_rock_action();
		} else if (command.equals("Genre_OST_all")) {
			action = new Genre_OST_all_action();
		} else if (command.equals("Genre_OST_drama")) {
			action = new Genre_OST_drama_action();
		} else if (command.equals("Genre_OST_fmovie")) {
			action = new Genre_OST_fmovie_action();
		} else if (command.equals("Genre_OST_kmovie")) {
			action = new Genre_OST_kmovie_action();
		} else if (command.equals("Genre_pop_all")) {
			action = new Genre_pop_all_action();
		} else if (command.equals("Genre_pop_hiphop")) {
			action = new Genre_pop_hiphop_action();
		} else if (command.equals("Genre_pop_pop")) {
			action = new Genre_pop_pop_action();
		} else if (command.equals("Genre_pop_RNB")) {
			action = new Genre_pop_RNB_action();
		} else if (command.equals("Genre_pop_rock")) {
			action = new Genre_pop_rock_action();
		} else if (command.equals("Genre_trot")) {
			action = new Genre_trot_action();
		} else if (command.equals("Newest_album_all")) {
			action = new Newest_album_all_action();
		} else if (command.equals("Newest_album_hot")) {
			action = new Newest_album_hot_action();
		} else if (command.equals("Newest_song_all")) {
			action = new Newest_song_all_action();
		} else if (command.equals("Newest_song_hot")) {
			action = new Newest_song_hot_action();
		}
		return action;

	}
}
