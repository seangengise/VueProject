import en from '@/locales/en.json'
import fr from '@/locales/fr.json'
import { createI18n } from 'vue-i18n'

const datetimeFormats = {
  fr: {
    date: {
      year: 'numeric',
      month: 'numeric',
      day: 'numeric',
    },
    datetime: {
      year: 'numeric',
      month: 'numeric',
      day: 'numeric',
      hour: 'numeric',
      minute: 'numeric',
      hour12: false,
    },
    short: {
      month: 'numeric',
      day: 'numeric',
    },
    long: {
      year: 'numeric',
      month: 'short',
      day: 'numeric',
      weekday: 'short',
      hour: 'numeric',
      minute: 'numeric',
    },
    monthYear: {
      year: 'numeric',
      month: 'short',
    },
  },
  en: {
    date: {
      year: 'numeric',
      month: 'numeric',
      day: 'numeric',
    },
    datetime: {
      year: 'numeric',
      month: 'numeric',
      day: 'numeric',
      hour: 'numeric',
      minute: 'numeric',
      hour12: false,
    },
    short: {
      month: 'numeric',
      day: 'numeric',
    },
    long: {
      year: 'numeric',
      month: 'short',
      day: 'numeric',
      weekday: 'short',
      hour: 'numeric',
      minute: 'numeric',
    },
    monthYear: {
      year: 'numeric',
      month: 'short',
    },
  },
}

// Assign imported files to messages object
const messages = {
  en,
  fr,
}

// Create i18n instance
const i18n = createI18n({
  locale: import.meta.env.VITE_I18N_LOCALE || 'fr', // Default language
  fallbackLocale: import.meta.env.VITE_I18N_FALLBACK_LOCALE || 'en', // Fallback language if translation is missing
  datetimeFormats,
  messages,
})

export default i18n
